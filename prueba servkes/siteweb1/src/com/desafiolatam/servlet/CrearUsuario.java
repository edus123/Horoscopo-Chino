package com.desafiolatam.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.UsuarioDTO;

/**
 * Servlet implementation class CrearSesion
 */
@WebServlet("/CrearUsuario")
public class CrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse
	response) throws IOException, ServletException{
		
	//after the jsp. this receives the data and 
	//sends it to the database.
	String nombre = request.getParameter("nombre");	
	String nombreUsuario = request.getParameter("nombreUsuario");	
	String password = request.getParameter("contrasena");	
	
	int fecha = Integer.parseInt(request.getParameter("fecha"));	
	UsuarioDTO newUser = new UsuarioDTO();
	
	int idHoroscopo = 0;
	Facade facade = new Facade();
	try {
		
		idHoroscopo = facade.obtenerIdAnima(facade.consultarAnimalPorFecha(fecha));
	    
		newUser.setIdHoroscopo(idHoroscopo);
		newUser.setNombre(nombre);
		newUser.setNombreUsuario(nombreUsuario);
		newUser.setContrasena(password);
		newUser.setFechaDeNacimiento(fecha);
		
		facade.crearUsuario(newUser);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	
	request.setAttribute("nombreUsuario", nombreUsuario);
	request.setAttribute("password", password);
	request.setAttribute("idHoroscopo", idHoroscopo);
	
	
	
		
    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/IniciarSesion");
    requestDispatcher.forward(request, response);
	
	}

}
