package com.desafiolatam.modelo;

import java.util.List;

public class HoroscopoDTO {
	int idHoroscopo;
	String nombre;
	String[] descripcion;
	String link;
	
	
	public HoroscopoDTO(){}

	
	public HoroscopoDTO(String string, int int1) {
	this.nombre = string;
	this.idHoroscopo = int1;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getIdHoroscopo() {
		return idHoroscopo;
	}
	public void setIdHoroscopo(int idHoroscopo) {
		this.idHoroscopo = idHoroscopo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String[] getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String[] descripcion) {
		this.descripcion = descripcion;
	}

    
	public String consultarHoroscopo(int anio){
		
		int remainder = anio % 12;
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

}
