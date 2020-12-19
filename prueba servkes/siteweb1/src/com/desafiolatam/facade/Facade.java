package com.desafiolatam.facade;

import com.desafiolatam.modelo.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.desafiolatam.dao.*;

public class Facade {

	
	
	
	
	
	//llama a un método dao que desde la base de obtiene el año de nacimiento. 
	public int consultarAnio(String usuario) throws SQLException {
		UsuarioDAO dao = new UsuarioDAO();		
		return dao.consultarNacimiento( usuario);
	}

	
	public List<HoroscopoDTO> getAnimales() throws SQLException{
		HoroscopoDAO dao = new HoroscopoDAO();
		return dao.readall();
	}
	
	
	
	
	//método propio de la lógica de negocios se inserta el año de nacimiento y retorna el animal.
	public String consultarAnimal(String usuarioId) throws SQLException {
		
		HoroscopoDAO dao = new HoroscopoDAO(); 
		return dao.consultarAnimal(usuarioId);
	}

	public UsuarioDTO obtenerUsuario(String nombreUsiaro) throws SQLException {

		UsuarioDAO dao = new UsuarioDAO();
		return dao.obtenerUsuario(nombreUsiaro);   
	}


	public void crearUsuario(UsuarioDTO newUser) throws SQLException {
	
		UsuarioDAO dao = new UsuarioDAO();
			dao.insertarUsuario(newUser);
	}
	
	
	public List<String> obtenerNombresUsuaros() throws SQLException {
		UsuarioDAO dao = new UsuarioDAO();
		List<String> lista = dao.obtenerNombresUsuaros();
		return lista;
	}

	public int obtenerIdAnima(String nombre) throws SQLException {
		HoroscopoDAO dao = new HoroscopoDAO();
		return dao.obtenerId(nombre);
		
	}


	public String consultarAnimalPorFecha(int fecha) {
		UsuarioDTO dto = new UsuarioDTO();
		
		return dto.obtenerAnimalPorAnio(fecha);
	}


	public ArrayList<String> ObtenerDatosLogin() throws SQLException {
		UsuarioDAO dao = new UsuarioDAO();
		return dao.ObtenerDatosLogin();
	}


	public UsuarioDTO obtenerDatosEspecificos(String campoBuscado, String tabla, String campoIdentificador, String id) throws SQLException {
		UsuarioDAO dao = new UsuarioDAO(); 
		return dao.ObtenerDatosEspecificos(campoBuscado, tabla, campoIdentificador, id);
	}


	public List<UsuarioCompletoDTO> obtenerListaUsuario(String user) throws SQLException {
		UsuarioDAO dao =  new UsuarioDAO();
		return dao.obtenerUsuarios(user);
	}


	public boolean modificarUsuario(UsuarioDTO dto) {
		UsuarioDAO dao =  new UsuarioDAO();
		return dao.modificarUsuario(dto);	
	
	}


	public Boolean eliminarUsuario(String usuarioPorEliminar) {
		UsuarioDAO dao =  new UsuarioDAO();
		return dao.eliminarUsuario(usuarioPorEliminar);	
	}


	public String obtenerAnimalPorId(int id) {
		UsuarioDTO dto = new UsuarioDTO();
		return dto.obtenerAnimalPorID(id);
	}


	public List<UsuarioCompletoDTO> obtenerTodos() {
		UsuarioDAO dao =  new UsuarioDAO();
		return dao.obtenerTodos();	
	}
}
