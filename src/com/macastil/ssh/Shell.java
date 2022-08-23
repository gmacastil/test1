package com.macastil.ssh;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;

public class Shell extends Thread {
	private String hostname = null;
	private int port = 22;
	private String user = null;
	private String pwd = null;

	private String hostTunnel = null;
	private int portTunnel = 22;
	private String userTunnel = null;
	private String pwdTunnel = null;
	private int portFw = 5000;
	private int i = 0;

	private boolean tunnel = false;
	private ArrayList<String> comandos = new ArrayList<String>();

	private Session sessionFw = null;
	private Session session = null;
	//private PrintWriter toChannel = null;

	private boolean serie = false;

	private OutputStreamWriter writer = null;

	public void setPortTunnel(int portTunnel) {
		this.portTunnel = portTunnel;
	}

	public void setI(int i) {
		this.i = i;
	}

	public void setPort(int port) {
		this.port = port;
	}

	public void setTunnel(boolean tunnel) {
		this.tunnel = tunnel;
	}

	public void setHostTunnel(String hostTunnel) {
		this.hostTunnel = hostTunnel;
	}

	public void setUserTunnel(String userTunnel) {
		this.userTunnel = userTunnel;
	}

	public void setPwdTunnel(String pwdTunnel) {
		this.pwdTunnel = pwdTunnel;
	}

	public void setSerie(boolean serie) {
		this.serie = serie;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setComandos(ArrayList<String> comandos) {
		this.comandos = comandos;
	}

	public void setHostname(String hostname) {
		this.hostname = hostname;
	}

	public void run() {
		try {
			if (tunnel) {
				conectarTunnel(hostname, port);
			} else {
				conectar(hostname, port);
			}
			ejecutar();
			desconectar();
		} catch (Exception e) {
			System.out.println(hostname + ":err:" + e.getMessage());
			e.printStackTrace();
			desconectar();
		}
	}

	private void conectar(String hostname, int port) throws JSchException {
		session = new JSch().getSession(user, hostname, port);
		session.setPassword(pwd);
		session.setConfig("StrictHostKeyChecking", "no");
		session.connect();
	}

	private void conectarTunnel(String hostname, int port) throws Exception {
		JSch js = new JSch();
		sessionFw = js.getSession(userTunnel, hostTunnel, portTunnel);
		sessionFw.setPassword(pwdTunnel);
		sessionFw.setConfig("StrictHostKeyChecking", "no");
		sessionFw.connect();
		int newPort = sessionFw.setPortForwardingL(portFw + i, hostname, port);
		//
		session = js.getSession(user, "localhost", newPort);
		session.setPassword(pwd);
		session.setConfig("StrictHostKeyChecking", "no");
		session.connect();
	}

	public void writeCommand(String s) {
		try {
			writer.write(s);
			writer.flush();
		} catch (Exception ex) {
		}
	}

	private void ejecutar() throws JSchException, InterruptedException, IOException {
		for (String comando : comandos) {

			StringBuffer out = new StringBuffer();

			if (serie) {
				System.out.println("--------------------------------------------");
				System.out.println(hostname);
			} else {
				out.append(hostname + ":");
			}
			ChannelExec channel = (ChannelExec) session.openChannel("exec");
			channel.setCommand(comando);
			channel.setInputStream(null);
			channel.setErrStream(System.err);
			channel.setPty(true);
			InputStream in = channel.getInputStream();
			channel.connect();
			while (channel.isConnected()) {
				Thread.sleep(100);
			}
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			while (true) {
				String line = br.readLine();
				if (line == null)
					break;
				if (serie)
					System.out.println(line);
				else
					out.append(line + ":");
			}
			br.close();
			if (!serie)
				System.out.println(out.toString().substring(0, out.toString().length() - 1));
			channel.disconnect();
		}
	}

	private void desconectar() {
		session.disconnect();
		if (sessionFw.isConnected()) {
			sessionFw.disconnect();
		}
	}
}
