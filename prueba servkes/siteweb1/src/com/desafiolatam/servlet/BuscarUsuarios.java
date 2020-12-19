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
//import javax.servlet.http.HttpSession;

import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.UsuarioCompletoDTO;
//import com.desafiolatam.modelo.UsuarioDTO;

/**
 * Servlet implementation class BuscarUsuarios
 */
@WebServlet("/BuscarUsuarios")
public class BuscarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			Facade facade = new Facade();
			String user = request.getParameter("usuarioBuscado");
			
			List<UsuarioCompletoDTO> listaUsuarios = null;
			
			try {
				listaUsuarios = facade.obtenerListaUsuario(user);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


			request.setAttribute("listaUsuarios", listaUsuarios);	
			request.setAttribute("usuarioBuscado", user);	
			System.out.println(listaUsuarios.get(0).getHoroscopo().getNombre() + listaUsuarios.get(0).getUsuario().getNombre());
			//This sends our info to the other jsp.
			RequestDispatcher rd = request.getRequestDispatcher("ResultadoBusqueda.jsp"); // add it like this /areaPrivada.jsp
			rd.forward(request, response);
			
		}
	}


