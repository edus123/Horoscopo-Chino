package com.desafiolatam.servlet;

import java.io.IOException;
import java.sql.SQLException;
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
import com.desafiolatam.modelo.UsuarioDTO;

/**
 * Servlet implementation class PreListarUsuarios
 */
@WebServlet("/PreListarUsuarios")
public class PreListarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside PreListarUsuarios.java");
		Facade facade = new Facade();
		
	
		List<UsuarioCompletoDTO> listaUsuarios = null;
		
		listaUsuarios = facade.obtenerTodos();
		
	
		request.setAttribute("listaUsuarios", listaUsuarios);	
		
		//This sends our info to the other jsp.
		RequestDispatcher rd = request.getRequestDispatcher("ListarUsuario.jsp"); // add it like this /areaPrivada.jsp
		rd.forward(request, response);
		
		
	}

}
