




package com.desafiolatam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.desafiolatam.dao.UsuarioDAO;
import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.UsuarioDTO;

/**
 * Servlet implementation class IniciarSesion
 */
@WebServlet("/IniciarSesion")
public class IniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

			
			

			ArrayList<String> datos = new ArrayList<String>();
			Facade facade = new Facade();
			
		    

			
				try {
					datos = facade.ObtenerDatosLogin();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			
			
				
			
			request.setAttribute("datos", datos);
	
			
			
			
			RequestDispatcher rd = request.getRequestDispatcher("InicioSesion.jsp"); // add it like this /areaPrivada.jsp
			rd.forward(request, response);
	
	}
	
	
	
	
	//Get statement? didnt work -trying doPost, this ...is a request from the login page 
	protected void doPost(HttpServletRequest request, HttpServletResponse
	response) throws IOException, ServletException{
		

		ArrayList<String> datos = new ArrayList<String>();
		Facade facade = new Facade();
		
		
		try {
			datos = facade.ObtenerDatosLogin();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
	
		
	
		request.setAttribute("datos", datos);
		
		
		
			RequestDispatcher rd = request.getRequestDispatcher("InicioSesion.jsp"); // add it like this /areaPrivada.jsp
			rd.forward(request, response);
			
			
		//}
	}

}
