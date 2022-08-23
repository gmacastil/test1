package test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;

public class Test {

	public static void main(String[] args) throws Exception {
		new Test().ejecutar();
	}

	private Session session = null;
	private ChannelExec channel = null;

	public void ejecutar() throws IOException, InterruptedException, JSchException {
		session = new JSch().getSession("alecasti", "127.0.0.1", 22);
		session.setPassword("Angela27");
		session.setConfig("StrictHostKeyChecking", "no");
		session.connect();
		channel = (ChannelExec) session.openChannel("exec");
		channel.setCommand("hostname -f");
		ByteArrayOutputStream responseStream = new ByteArrayOutputStream();
		channel.setOutputStream(responseStream);
		channel.connect();
		while (channel.isConnected()) {
			Thread.sleep(100);
		}
		String responseString = new String(responseStream.toByteArray());
		System.out.println(responseString);
	}

	Runnable stdoutLogger = new Runnable() {
		public void run() {
			try {
				InputStream is = channel.getInputStream();
				int b;
				while ((b = is.read()) != -1) {
					System.out.println("Read " + b + " - " + (char) b);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	};
}
