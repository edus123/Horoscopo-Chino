package com.desafiolatam.modelo;

public class UsuarioDTO {
	String nombreUsuario;
	String nombre;
	String contrasena;
	int fechaDeNacimiento;
	int idHoroscopo;
	int idUsuario;
public UsuarioDTO() {}
	
	
	
	public UsuarioDTO(String string, String string2, int int1, int int2) {
	this.nombre = string;
	this.nombreUsuario = string2;
	this.fechaDeNacimiento	= int1;	
	this.idUsuario	= int2;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public int getIdHoroscopo() {
		return idHoroscopo;
	}
	public void setIdHoroscopo(int idHoroscopo) {
		this.idHoroscopo = idHoroscopo;
	}
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getContrasena() {
		return contrasena;
	}
	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	public int getFechaDeNacimiento() {
		return fechaDeNacimiento;
	}
	public void setFechaDeNacimiento(int fechaDeNacimiento) {
		this.fechaDeNacimiento = fechaDeNacimiento;
	}
	public String obtenerAnimalPorAnio(int fecha) {
		
		int remainder = fecha % 12;
		String animal = null;
		// determina el animal
		switch (remainder) 
		{
			case (0): animal = "Mono";
				break;
			case (1): animal = "Gallo";
				break;
			case (2): animal = "Perro";
				break;
			case (3): animal = "Cerdo";
				break;
			case (4): animal = "Rata";
				break;
			case (5): animal = "Buey";
				break;
			case (6): animal = "Tigre";
				break;
			case (7): animal = "Conejo";
				break;
			case (8): animal = "Dragon";
				break;
			case (9): animal = "Serpiente";
				break;
			case (10): animal = "Caballo";
				break;
			case (11): animal = "Cabra";
				break;
		}
	  
		
		
		return animal;
	}
	
	
	
	public String obtenerAnimalPorID(int id) {
		
		
		String animal = null;
		// determina el animal
		switch (id) 
		{
			case (9): animal = "Mono";
				break;
			case (10): animal = "Gallo";
				break;
			case (11): animal = "Perro";
				break;
			case (12): animal = "Cerdo";
				break;
			case (1): animal = "Rata";
				break;
			case (2): animal = "Buey";
				break;
			case (3): animal = "Tigre";
				break;
			case (4): animal = "Conejo";
				break;
			case (5): animal = "Dragon";
				break;
			case (6): animal = "Serpiente";
				break;
			case (7): animal = "Caballo";
				break;
			case (8): animal = "Cabra";
				break;
		}
	  
		
		
		return animal;
	}
	
	
	
	
}
