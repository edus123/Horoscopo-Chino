package com.desafiolatam.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.UsuarioDTO;

/**
 * Servlet implementation class prePaginaSesion
 */
@WebServlet("/prePaginaSesion")
public class prePaginaSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public prePaginaSesion() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
    	Facade facade = new Facade();
    	UsuarioDTO dto = new UsuarioDTO();
    	HttpSession sesion = request.getSession(true);
    
    	try {
			dto = facade.obtenerDatosEspecificos("NOMBRE, FECHA_NACIMIENTO, ID_HOROSCOPO", "USUARIOS", "NOMBRE_USUARIO", request.getParameter("username"));
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
    	
    	
    	
    	sesion.setAttribute("username", request.getParameter("username"));
    	sesion.setAttribute("contraseña", request.getParameter("password"));
    	sesion.setAttribute("IdAnimal", dto.getIdHoroscopo());
    	sesion.setAttribute("fechaNacimiento", dto.getFechaDeNacimiento());
    	sesion.setAttribute("nombre", dto.getNombre());
    	
    	request.getRequestDispatcher("/Sesion.jsp").include(request, response);
    	
    	
    	
    	
	}

}
