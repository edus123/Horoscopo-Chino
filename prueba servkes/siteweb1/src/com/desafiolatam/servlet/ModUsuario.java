package com.desafiolatam.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.desafiolatam.dao.UsuarioDAO;
import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.UsuarioDTO;

@WebServlet("/ModUsuario")
public class ModUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession misesion = request.getSession();
		UsuarioDTO dto = new UsuarioDTO();
		Facade facade = new Facade();
		Boolean verficador = true;
		/*String user = (String) misesion.getAttribute("Usuario");*/
		
		if(!(request.getParameter("Nombre")=="")) {
			dto.setNombre(request.getParameter("Nombre"));		
			verficador = false;
		}
		if(!(request.getParameter("nombreUsuario")=="")) {
			dto.setNombreUsuario(request.getParameter("NombreUsuario"));
			verficador = false;
		}

		if(!(request.getParameter("Contrasena")=="")) {
			dto.setContrasena(request.getParameter("Contrasena"));
			verficador = false;
		}

		if(!(request.getParameter("fecha")=="")) {
			dto.setFechaDeNacimiento(Integer.parseInt(request.getParameter("fecha")));
			verficador = false;
		}else {
			dto.setFechaDeNacimiento(-1);
		}

		
		if(!(verficador)) {
			
			try {
				if(facade.modificarUsuario(dto)) {
					misesion.setAttribute("nombre", request.getParameter("Nombre"));
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		
		
		
		
		

	
		
		
		
	
		
		RequestDispatcher rd = request.getRequestDispatcher("Sesion.jsp"); 
		rd.forward(request, response);

	}

}
