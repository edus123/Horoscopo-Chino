<%@page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
     
     
     	  <%-- Declaración de variables  --%>
 
	 <script>
	 	const nombres = new Array();
		var usuario = null
		var password = null
		var verificador = false;
		var exp = "";
		var contrasenaUsuarioId =  -3;
	 
 	 </script>
 
     
     
     

     
     
     
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Style CSS -->
    <link rel="stylesheet" href="css/InicioSesion.style.css">
    <!-- Ajax -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>


<body style="background-image: url(css/backgroundWallpaper.jpg); background-repeat:repeat; background-size: cover;">
    <p class="label-txt" style="width: 100%; text-align: center; margin-top: 9%; font-size: unset; font-weight: 700;">LOGIN</p>




<form class="needs-validation" id="formulario"  action="${pageContext.request.contextPath}/prePaginaSesion" method="post"novalidate>
  <label>
    <p class="label-txt" >INGRESA USUARIO</p>
    <input id="1stInput" class="input form-control" name="username" id="username" required>
    <div  id="elnombre"class="invalid-feedback">
			          Nombre no puede estar en blanco.
			        </div> 
    
    <div class="line-box">
      <div class="line" ></div>
    </div>
  </label>
    
  <label>
    <p class="label-txt">INGRESA CONTRASEÑA</p>
    <input id="2stInput" type="password" class="input form-control" name="password" style="border-bottom-style: inset; background-color: #541010; border-bottom-left-radius: 0%; border-bottom-right-radius: 0%; border-bottom-color: #7a4e4e;"required>
    <div  id="contra"class="invalid-feedback">
			          Contraseña no puede estar en blanco.
			        </div> 
    
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  
  
  
  
  
  <button type="submit" style="width: 8em">Enviar</button>
  <button type="button" style="width: 8em" onclick="openPage('preCreacion')"  >Registrarse</button>
 </form>
 

 
 
 
  <%-- JSTL mágico que genera un script dinámicamente --%>
        
        
             <c:out value="${'<script>'}" escapeXml="false"/>
		
				<c:forEach var="dato" items="${requestScope.datos}">
					nombres.push('<c:out value="${dato}"/>')
				</c:forEach>
    
			<c:out value="${'</script>'}" escapeXml="false"/>
            
            
	 				<%-- fin  JSTL mágico   --%>


  <script type="text/javascript">

	$(document).ready(function(){

		if(nombres.length != 0 ){
			
			const passwords = new Array();
	        var exp= '';
	        
			for (i = 1; i < nombres.length; i+=2) {
				passwords.push(nombres[i]);
			}
			
		 	$("#1stInput").blur(function() {
		 	
					
				for (i = 0; i < nombres.length; i++) {
						   			
				   if($("#1stInput").val()===nombres[i] ) {
					  	
					   if($("#2stInput").val()!=nombres[i+1]){
					  	 	$("#contra").addClass('d-block');
		   					document.getElementById("contra").innerHTML = "Contraseña incorrecta.";
				    		verificador = false;
					  	}
					  
					   
					    $("#elnombre").removeClass('d-block');
					    contrasenaUsuarioId = nombres[i+1];	
					    i = password.length;			  
				   	    verificador =  true;
				   	  
				   	   
				    }else if((i==nombres.length-1) && ($("#1stInput").val()==="")){
				   		 
				   			   	
				
				   		$("#elnombre").addClass('d-block');
					   	document.getElementById("elnombre").innerHTML = "Campo no debe estar en blanco.";
						verificador = false;					    
				    	
								
				   }else if((i==nombres.length-1) && ($("#1stInput").val()!=nombres[i])){
				
					   	
						$("#elnombre").addClass('d-block');    		 
						document.getElementById("elnombre").innerHTML = "Nombre de Usuario Incorrecto. Por favor intente con otro";
						verificador = false;
					    	 

				   }
				}	
			});	
		 	
		 
			
		 	$("#2stInput").blur(function() {
				
					   			
				   if($("#2stInput").val()===contrasenaUsuarioId) {
				        $("#contra").removeClass('d-block');					   				  	
					    i = passwords.length;		
				    	verificador = true;
				   }else if($("#2stInput").val()===""){
					
						document.getElementById("contra").innerHTML = "Contraseña no debe quedar en blanco.";
				    	verificador = false;
				      
				   
				   }else{
					   $("#contra").addClass('d-block');					   
				    	document.getElementById("contra").innerHTML = "Contraseña incorrecta. Por favor intente denuevo.";
				    	verificador = false;
				   }
			
			});	
	
		}else{ 
		 	$("#1stInput").blur(function() {
			$("#elnombre").addClass('d-block');
		   	document.getElementById("elnombre").innerHTML = "Usuario no existe por favor registrese.";
			verificador = false;		
		 	});
		 	$("#2stInput").blur(function() {			
			$("#contra").addClass('d-block');					   
		    document.getElementById("contra").innerHTML = "Por favor registrese.";
		    verificador = false;
		 	});
		}	
		 	
		});

</script>


<script type="text/javascript">


$(document).ready(function validar(){

		 return verificador;


});



function openPage(pageURL)
{
window.location.href = pageURL;
}


	<%-- funcion para estilizar el formulario  --%>


$(document).ready(function(){

	  $('.input').focus(function(){
	    $(this).parent().find(".label-txt").addClass('label-active');
	  });

	  $(".input").focusout(function(){
	    if ($(this).val() == '') {
	      $(this).parent().find(".label-txt").removeClass('label-active');
	    };
	  });

	});

 
	$(document).ready(function(){
		
	});



	(function() {
		  'use strict';
		  window.addEventListener('load', function() {
		    // Fetch all the forms we want to apply custom Bootstrap validation styles to
		    var forms = document.getElementsByClassName('needs-validation');
		    // Loop over them and prevent submission
		    var validation = Array.prototype.filter.call(forms, function(form) {
		      form.addEventListener('submit', function(event) {
		        if (verificador === false) {
		          event.preventDefault();
		          
		        }
		        form.classList.add('was-validated');
		      }, false);
		    });
		  }, false);
		})();





 	
 
	
</script>


    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>