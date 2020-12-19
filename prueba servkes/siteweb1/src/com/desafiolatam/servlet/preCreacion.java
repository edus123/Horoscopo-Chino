package com.desafiolatam.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.desafiolatam.facade.Facade;

/**
 * Servlet implementation class preCreacion
 */
@WebServlet("/preCreacion")
public class preCreacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public preCreacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		List<String>	 listaUsuarios = null;
		Facade facade = new Facade();
		try {
		listaUsuarios = facade.obtenerNombresUsuaros();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		request.setAttribute("nombres",listaUsuarios);
		
		request.getRequestDispatcher("/CrearUsuario.jsp").include(request, response);
	
	
	}

}
