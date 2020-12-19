package com.desafiolatam.procesaconexion;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

public class Conexion {

	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/china";
	private String usuario = "root";
	private String clave = "admin";
	
	private static Conexion datasource;
	private BasicDataSource basicDataSource = null;
	
	private Conexion() {
		basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUsername(usuario);
		basicDataSource.setPassword(clave);
		basicDataSource.setUrl(url);
		
		basicDataSource.setMinIdle(3);
		basicDataSource.setMaxIdle(11);
		basicDataSource.setMaxTotal(50);
		basicDataSource.setMaxWaitMillis(10000);
		
	}
	
	public static Conexion generarEntregarConexion(){
		if(datasource == null) {
			datasource = new Conexion();
		}
		return datasource;
	}
	
	public Connection getConexion() throws SQLException {
		return this.basicDataSource.getConnection();
	}
	
	public void cerrarConexion(Connection cnn) throws SQLException {
		cnn.close();
	}
}
