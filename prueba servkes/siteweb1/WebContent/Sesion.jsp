<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.desafiolatam.modelo.UsuarioCompletoDTO"%>
<%@ page import="com.desafiolatam.modelo.UsuarioDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!-- request.setAttribute("listaUsuarios", listaUsuarios);	 -->
	
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sesion</title>

<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!-- Style CSS -->
<!-- <link rel="stylesheet" href="style.css"> -->
<link rel="stylesheet" href="css/ListarUsuario.style.css">
<!-- Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body style="background-image: url(css/backgroundWallpaper.jpg); background-repeat: repeat; background-size: cover;">
    <!-- nav start -->
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
                        <div class="dropdown-divider"></div>
                        <form action="${pageContext.request.contextPath}/confirmacionEliminacion.jsp" method="post">
                            <button id="botoncCerrar" style="width: -webkit-fill-available; color:white; border: hidden; background-color: transparent;">Borrar Cuenta</button>
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
    <!-- nav end -->



 <h2 class="text-center m-5 text-white">Hola <c:out value="${sessionScope.nombre}"/>, ¿Quieres conocer tu Horóscopo?</h2>
    
    <a  style=" position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%); class="class="btn btn-warning btn-lg" href="PreConsulta" role="button">Consultar Horóscopo</a>
    



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