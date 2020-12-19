package com.desafiolatam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.desafiolatam.facade.Facade;
import com.desafiolatam.modelo.HoroscopoDTO;


/**
 * Servlet implementation class PreConsulta
 */
@WebServlet("/PreConsulta")
public class PreConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PreConsulta() {
        super();       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		//variables de utilidad para los métodos
		Facade facade = new Facade();
		

		
		//usuarioId rescatado de la sesión(se necesita para la consulta del año)
	    HttpSession sesionUsuario = request.getSession();
		String nombre = (String) sesionUsuario.getAttribute("nombre");
		String usuarioId =  Integer.toString((int)sesionUsuario.getAttribute("IdAnimal"));
		String animal = null;
	   
		
		// 5 , 10 , 12 -> para el identificador 'de la'
		String identificador = " del ";
		if(usuarioId.equals("5") || usuarioId.equals("10") || usuarioId.equals("12")) {
		identificador = " de la ";	
		}



		 List<HoroscopoDTO> animales = new ArrayList<HoroscopoDTO>(); 
	    
		 	
	    	  try {
	    		//llama al método consultarAnimal de facade y este a su vez llama al metodo consultarAnimal de la clase HoroscopoDAO que realiza el query: select h.nombre from horoscopo h inner join usuario u on h.id_horoscopo = u.id_horoscopo where u.nombre  =     sesion.getAttribute("usuarioID",usuarioID), o en su defecto una variable usuarioid que posea el valor, algo similar a lo que hay en la pag 30 de relaciones II	    			
	    		  	animal = facade.consultarAnimal(nombre);
					animales = facade.getAnimales();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		
	    	  


		
	  
	    if(animal=="") {
	    	animal = (String)sesionUsuario.getAttribute("animal");
	    }	  
	    
	    String mensaje = nombre + " naciste en el año " + identificador  + animal;	  

	    
		request.setAttribute("animales", animales);
		request.setAttribute("animal", animal);
		request.setAttribute("mensaje", mensaje);
		
		
		
		request.getServletContext().getRequestDispatcher("/consultaAnimal.jsp").forward(request,
				response);
				
				
		
		

	
	}

}


























