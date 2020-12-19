<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList" %>
<%@ page import="java.util.List"%>
<%@ page import="com.desafiolatam.modelo.HoroscopoDTO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
crossorigin="anonymous"></script>
<link
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
rel="stylesheet" integrity="sha384-
ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">
</head>
<body style="background-image: url(css/backgroundWallpaper.jpg); background-repeat: repeat; background-size: cover;"> 
    <h1></h1>
    <h2></h2>
  
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #541010!important;">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="padding-right: 6%; padding-left: 6%;">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" style="color:white;" href="Sesion.jsp">Inicio <span class="sr-only" style="color:white;">(current)</span></a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" style="color:white;" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <c:out value="${sessionScope.nombre}"/>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="text-align: center; background: #960303;">
                        <form action="${pageContext.request.contextPath}/ModUsuario.jsp" method="post">
                            <button style="color:white; border: hidden; background-color: transparent;" type="submit">Modificar Usuario</button>
                        </form>
                        <div class="dropdown-divider"></div>
                        <form action="${pageContext.request.contextPath}/CerrarSesion" method="post">
                            <button id="botoncCerrar" style="width: -webkit-fill-available; color:white; border: hidden; background-color: transparent;">Cerrar Sesion</button>
                        </form>
                    </div>
                </li>
                <li class="nav-item">
                    <form action="${pageContext.request.contextPath}/PreListarUsuarios" method="post">
                        <button style="border: hidden; color:white; background-color: transparent;" class="nav-link">Ver los demas usuarios</button>
                    </form>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/BuscarUsuarios" method="post">
                <input class="form-control mr-sm-2" style="border-color: yellow; color: yellow; background-color: #570300; color: white;" type="search" placeholder="Busca Usuarios" aria-label="Search" name="usuarioBuscado">
                <button  class="btn btn-outline-success my-2 my-sm-0" type="submit" id="botonBuscar" style="border-color: yellow; color: yellow;">Buscar</button>
            </form>
        </div>
    </nav>
    
  
    
    
    <h1 class="text-center m-5"><c:out value="${requestScope.mensaje}"/></h1>
  
    <c:forEach var="animalchino" items="${requestScope.animales}">
         
    	<c:if test = "${animalchino.nombre == requestScope.animal}">
  			<div  align="center">
   		    <img src="<c:out value="${animalchino.link}"/>" alt="animalchino" >    
       		</div>
 			<div class="m-5">  			   
        		<c:forEach var="descipcionParrafo" items="${animalchino.descripcion}">   				
   					<h5 class="text-light"><c:out value="${descipcionParrafo}"/></h5>			     		
     			</c:forEach> 
  			</div>
  			
        </c:if>
        
    </c:forEach>   
     

  <div style="display:flex; justify-content:center">
  <a href="Sesion.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Volver</a>
  </div>

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>


</body>
</html>