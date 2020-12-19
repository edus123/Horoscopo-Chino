<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.desafiolatam.modelo.UsuarioCompletoDTO"%>
<%@ page import="com.desafiolatam.modelo.UsuarioDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!-- request.setAttribute("listaUsuarios", listaUsuarios);	 -->
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Eliminado...</title>

<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!-- Style CSS -->
<!-- <link rel="stylesheet" href="style.css"> -->
<!-- Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body style="background-image: url(css/backgroundWallpaper.jpg); background-repeat: no-repeat; background-size: cover;">
	


	<div style="margin: 2% 6% 1% 5%;">
		<div>
			<h1 class="text-white text-center">¿Seguro que desea borrar su cuenta?<br> Presione "continuar" para  confirmar la eliminación<br> o "volver" para anular la eliminación</h1>
			</div>

	</div>
	
	 <div style="display:flex; justify-content:center">
  <a href="EliminarUsuario" class="btn btn-warning btn-lg active" role="button" aria-pressed="true">Continuar</a>
  </div>
	<br>
	<br>
	<br>
	
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