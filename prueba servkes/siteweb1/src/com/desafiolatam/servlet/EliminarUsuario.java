package com.desafiolatam.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.UsuarioCompletoDTO;

/**
 * Servlet implementation class EliminarUsuario
 */
@WebServlet("/EliminarUsuario")
public class EliminarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Facade facade = new Facade();
		HttpSession sesion = request.getSession();
		String UsuarioPorEliminar = (String) sesion.getAttribute("username");
		int id = (int)sesion.getAttribute("IdAnimal");
		
		sesion.setAttribute("animal", facade.obtenerAnimalPorId(id));
		 facade.eliminarUsuario(UsuarioPorEliminar);

		request.setAttribute("UsuarioPorEliminar", UsuarioPorEliminar);	
		//This sends our info to the other jsp.
		RequestDispatcher rd = request.getRequestDispatcher("EliminacionUsuario.jsp"); // add it like this /areaPrivada.jsp
		rd.forward(request, response);

		
	}

}
