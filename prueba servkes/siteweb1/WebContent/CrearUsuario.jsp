<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList" %>
<%@ page import="java.util.List"%>
<%@ page import="com.desafiolatam.modelo.HoroscopoDTO"%>
<%@ page import="com.desafiolatam.modelo.UsuarioCompletoDTO"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Crear Usuario</title>

<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<!-- Style CSS -->
<link rel="stylesheet" href="css/CrearUsuario.style.css">
<!-- Ajax -->
<!-- <scrip src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script><script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.1.1.min.js"> -->

<!-- <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> -->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->



<script src="js/jquery.js"></script>

<style>
.form-control:focus {
    border-bottom-color: yellow !important;

    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgb(84, 16, 16);
}
.form-control:hover {
    border-bottom-color: yellow !important;
}
	</style>
</head>

<body style="background-image: url(css/backgroundWallpaper.jpg); background-repeat: repeat; background-size: cover;">
	
	
	
		
	<form class="needs-validation" action="${pageContext.request.contextPath}/CrearUsuario"
		method="post" novalidate>
		<label style="margin: 0% !important; font-size: x-large; font-weight: bold;">
			<p class="label-txt" style="display: contents;" >CREAR USUARIO</p> 
		</label>
		<label>
			<p class="label-txt">INGRESA NOMBRE</p> 
			<div>
		    <input class="input form-control text-white" name="nombre" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" required>
			        <div class="invalid-feedback">
			          Nombre no puede estar en blanco.
			        </div> 
			 </div>

				<div class="line"></div>
			</div>
		</label> 
		
		<label>
			<p class="label-txt">INGRESA NOMBRE DE USUARIO</p> 

			<div>
<!-- 			oninput="myFunction()" -->
		    <input  id="1stInput" class="text-white input form-control" name="nombreUsuario" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" required>
			        <div id="er1" class="invalid-feedback">
			          Nombre de Usuario no puede estar en blanco.
			        </div> 
			 </div>

				<div class="line"></div>
			</div>
		</label> 
		
		<label>
			<p class="label-txt">INGRESA CONTRASEÑA</p> 
		
			<div>
		    <input  id="contrasena"  class="text-white input form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  name="contrasena" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" required>
			        <div id="contraAlert" class="invalid-feedback">
			          Contraseña no puede estar en blanco.
			        </div> 
			 </div>
		</label> 
		
		<label>
			<p class="label-txt">INGRESA AÑO DE NACIMIENTO</p> 
				<div>
			    <input onKeyPress="if(this.value.length==4) return false;" id="fecha"  name="fecha"   class="input form-control text-white needs-validation"  pattern="^(([0-9]{1,3})|([1-1]{1,1})([0-9]{1,3})|([2-2]{1,1})([0-0]{1,1})(([0-1]{1,1})([0-9]{1,1})|([2-2]{1,1})([0-0]{1,1}))|([0-0]{4,4}))$" name="fecha" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" required>
				        <div id="nonumero"class="invalid-feedback">
				          Año no puede estar en blanco.
				        </div> 
				 </div>
		</label>
		<button type="button" style="width: 8em"
			onclick="openPage('IniciarSesion')">Volver</button>
		<button type="submit" style="width: 8em">Enviar</button>
	</form>

   <div id="asd"></div>




 <%-- JSTL mágico que genera un script dinámicamente --%>

    <c:out value="${'<script>'}" escapeXml="false"/>

	const fruits = new Array();

	<c:forEach var="nombre" items="${requestScope.nombres}">
	fruits.push('<c:out value="${nombre}"/>')
	</c:forEach>
    
	<c:out value="${'</script>'}" escapeXml="false"/>
	
	 			<%-- fin  JSTL mágico   --%>


	<script>
	
	$('#contrasena').keyup(function() {
		
	    if($('input[name="contrasena"]').val().length < 8) {
	    	document.getElementById("contraAlert").innerHTML = "Contraseña debe tener un mínimo de 8 caracteres, 1 letra minúscula y 1 letra mayúscula.";

	    }
	  	    	
	});
	
	

	$(document).ready(function(){
	$("#1stInput").keyup(function() {
		
		if(fruits.length!=0){
			for (i = 0; i < fruits.length; i++) {
			   			
	    		if($("#1stInput").val()===fruits[i] ) {
	    			alert("Nombre de Usuario no disponible. Por favor Use otro.");
	    	
	    		}	
	    	}
		}	
	});	
	});
	   

	   
	   
	
	        
	        
	        
	$('#fecha').keyup(function() {
	
	   
	    if($('input[name="fecha"]').val().match(/[^0-9]/)!=null) {
	    	document.getElementById("nonumero").innerHTML = "Sólo números máximo 2020.";

	    }
	  	    	
	});
	
	function openPage(pageURL) {
			window.location.href = pageURL;
		}

		$(document).ready(
				function() {

					$('.input').focus(
							function() {
								$(this).parent().find(".label-txt").addClass(
										'label-active');
							});

					$(".input").focusout(
							function() {
								if ($(this).val() == '') {
									$(this).parent().find(".label-txt")
											.removeClass('label-active');
								}
								;
							});

				});
	
		//Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
		'use strict';
		window.addEventListener('load', function() {
		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  var forms = document.getElementsByClassName('needs-validation');
		  // Loop over them and prevent submission
		  var validation = Array.prototype.filter.call(forms, function(form) {
		    form.addEventListener('submit', function(event) {
		      if (form.checkValidity() === false) {
		        event.preventDefault();
		        event.stopPropagation();
		      }
		      form.classList.add('was-validated');
		    }, false);
		  });
		}, false);
		})();

		
		</script>


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