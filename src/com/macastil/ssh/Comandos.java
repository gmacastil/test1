package com.macastil.ssh;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class Comandos {
	private boolean serie = false;
	private String PATH = "./txt";

	public static void main(String[] args) {
		Comandos test = new Comandos();
		String tmp = System.getProperty("ssh");
		if (tmp != null) {
			test.PATH = tmp;
		}
		try {
			test.ejecutar();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void ejecutar() throws IOException, InterruptedException {
		ArrayList<String> servers = cargarArchivoArreglo(PATH + "/servers.txt");
		if (servers.size() == 0) {
			System.out.println("No hay servidores configurados");
			return;
		}
		ArrayList<String> comandos = cargarArchivoArreglo(PATH + "/comandos.sh");
		if (comandos.size() < 2) {
			System.out.println("No hay comandos para ejecutar");
			return;
		}
		String[] config = comandos.get(0).split(":");
		String[] tunnel = null;
		if (comandos.size() > 2 && comandos.get(1).startsWith("tunnel")) {
			tunnel = comandos.get(1).split(":");
			comandos.remove(1);
		}
		comandos.remove(0);
		serie = config[0].equals("serie");
		int i = 0;
		for (String server : servers) {
			if (server != null && server.length() != 0) {
				Shell shell = new Shell();
				String[] sersplit = server.split(":");
				shell.setHostname(sersplit[0]);
				shell.setPort(sersplit.length == 2 ? Integer.valueOf(sersplit[1]) : 22);
				shell.setComandos(comandos);
				shell.setPwd(config[2]);
				shell.setUser(config[1]);
				shell.setSerie(serie);
				//
				if (tunnel != null) {
					shell.setTunnel(tunnel[0].equals("tunnel"));
					shell.setPortTunnel(Integer.parseInt(tunnel[4]));
					shell.setHostTunnel(tunnel[1]);
					shell.setUserTunnel(tunnel[2]);
					shell.setPwdTunnel(tunnel[3]);
					shell.setI(i);
				}
				if (serie) {
					shell.run();
				} else {
					TimeUnit.MILLISECONDS.sleep(100);
					shell.start();
				}
				i++;
			}
		}
	}

	private BufferedReader getBuffer(String nombre) throws FileNotFoundException {
		FileInputStream fstream = new FileInputStream(nombre);
		DataInputStream in = new DataInputStream(fstream);
		BufferedReader br = new BufferedReader(new InputStreamReader(in));
		return br;
	}

	public ArrayList<String> cargarArchivoArreglo(String nombre) throws IOException {
		ArrayList<String> lista = new ArrayList<String>();
		BufferedReader br = getBuffer(nombre);
		String strLine = null;
		while ((strLine = br.readLine()) != null) {
			strLine = strLine.trim();
			if (!strLine.startsWith("#") && strLine.length() != 0) {
				lista.add(strLine);
			}
		}
		return lista;
	}
}
