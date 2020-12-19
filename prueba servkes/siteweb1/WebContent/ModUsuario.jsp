<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList" %>
<%@ page import="java.util.List"%>
<%@ page import="com.desafiolatam.modelo.HoroscopoDTO"%>
<%@ page import="com.desafiolatam.modelo.UsuarioCompletoDTO"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modificar Usuario</title>

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
	
	
	
	
	


	<form action="ModUsuario" class="needs-validation" method="post" novalidate>
	
		<div class="jumbotron" style="margin: 4%; color: white; background-color: #541010;">
	
	<div class="text-center">
	<h2> Modificar Usuario</h2>
	<br>
	<h4>  clickee el campo que desea modificar</h4>
	<br>
	<br>
				
	<div>
		<h4><a  onclick="myFunction('#asd')"id="fdgdgd">Contraseña</a></h4>
		<div  id="asd"class="d-none ">
			
			<label>
			<p class="label-txt">INGRESA LA NUEVA CONTRASEÑA</p> 

		    <div>

		    	<input  id="contrasena" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"class="input form-control text-white" name="contrasena" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" >
			        <div id="contraAlert" class="invalid-feedback">
			         
			        </div> 
			 	</div>

				<div class="line"></div>
			</div>
		</label> 
			
		</div>
	
	
	
	
	
	<div>
		<h4 ><a  onclick="myFunction('#nombre')"id="name">Nombre</a></h4>
		<div  id="nombre"class="d-none ">
			
			<label>
			<p class="label-txt">INGRESA EL NUEVO NOMBRE</p> 

		    <div>

		    	<input  id="2stInput" class="input form-control text-white" name="Nombre" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" >
			        <div id="er2" class="invalid-feedback">
			          Nombre de Usuario no puede estar en blanco.
			        </div> 
			</div>

			<div class="line"></div>
			</div>
		</label> 
			
	
	</div>
	
	
	<div>
		<h4><a  onclick="myFunction('#username')"id="nombreusuario">Nombre Usuario</a></h4>
		<div  id="username"class="d-none ">
			
			<label>
			<p class="label-txt">INGRESA EL NUEVO NOMBRE DE USUARIO</p> 

		    <div>

		    	<input  id="3stInput" class="input form-control text-white" name="nombreUsuario" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" >
			        <div id="er3" class="invalid-feedback">
			          Nombre de Usuario no puede estar en blanco.
			        </div> 
			 	</div>

				<div class="line"></div>
			</div>
		</label> 
			

	</div>

	
	<div>
		<h4><a  onclick="myFunction('#anio')"id="GFGHFD">Año de nacimiento</a></h4>
		<div  id="anio"class="d-none ">
			
			<label>
			<p class="label-txt">INGRESA EL NUEVO AÑO DE NACIMIENTO</p> 

		    <div>

		    	<input onKeyPress="if(this.value.length==4) return false;" id="fecha"  name="fecha"   class="needs-validation input form-control text-white"  pattern="^(([0-9]{1,3})|([1-1]{1,1})([0-9]{1,3})|([2-2]{1,1})([0-0]{1,1})(([0-1]{1,1})([0-9]{1,1})|([2-2]{1,1})([0-0]{1,1}))|([0-0]{4,4}))$" name="fecha" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;" >
				    <div id="nonumero" class="invalid-feedback">
			          
			        </div> 
			 	</div>

				<div class="line"></div>
			</div>
		</label> 
			
		</div>

<br>
<br>
<br>
 <button class="btn btn-danger" type="submit">Enviar</button>
 <a class="btn btn-warning" href="Sesion.jsp" role="button">volver</a>
 
 </div>
</form>


	
	<script>
	
    
	$('#fecha').keyup(function() {
	
	   
	    if($('input[name="fecha"]').val().match(/[^0-9]/)!=null) {
	    	document.getElementById("nonumero").innerHTML = "Sólo números máximo 2020.";

	    }
	  	    	
	});
	
	
	function myFunction(identificador) {
	
		
		
		if($(identificador).hasClass('d-block')){
			$(identificador).removeClass('d-block');
		}else{
			$(identificador).addClass('d-block');
				
		}
		
		
	}
	
	
	$('#contrasena').keyup(function() {
		
	    if($('input[name="contrasena"]').val().length < 8) {
	    	document.getElementById("contraAlert").innerHTML = "Contraseña debe tener un mínimo de 8 caracteres, 1 letra minúscula y 1 letra mayúscula.";

	    }
	  	    	
	});
	
	
	
	
	
	
	
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
	
		



 <%-- JSTL mágico que genera un script dinámicamente --%>

    <c:out value="${'<script>'}" escapeXml="false"/>

	const fruits = new Array();

	<c:forEach var="nombre" items="${requestScope.nombres}">
	fruits.push('<c:out value="${nombre}"/>')
	</c:forEach>
    
	<c:out value="${'</script>'}" escapeXml="false"/>
	
	 			<%-- fin  JSTL mágico   --%>


	<script>
	
	
	

	$(document).ready(function(){
	$("#1stInput").keyup(function() {
		
		for (i = 0; i < fruits.length; i++) {
			   			
	    if($("#1stInput").val()===fruits[i] ) {
	    	alert("Nombre de Usuario no disponible. Por favor Use otro.");
	    	
			
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