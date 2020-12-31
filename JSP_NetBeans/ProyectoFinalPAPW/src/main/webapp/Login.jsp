<%-- 
    Document   : Login
    Created on : Nov 20, 2020, 1:36:46 AM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
     <link rel="stylesheet" type="text/css" href="CSS/cssLogin.css">

     <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">
    <title>Login</title>
   

    
<%-- 
    <script src="/JAVASCRIPT/archivos.js"></script>
--%>

   
    
    

</head>

<body>
      <!----Título--->
          
      <div class="container" align="center" >

      <h1>GeekSquad</h1>
      <h2>Informate de lo nuevo del mundo geek!</h2>
        <!----FORM PARA INGRESAR A LA PAGINA--->


    <p>
        <br>
        <br>
    </p>
        
    <h3>Ingresa con usuario y contraseña: </h3>
         <br>
         <form class="col-12" action="LogInController" method="POST">

            <div class="form-group">
                <label for="ingresa un Nombre de Uusuario">Username: </label>
                <input type="text" name="username" class="form-control" id="ingresaApodo" placeholder="Usuario">
            </div>
             
               <p>
                <br>
            </p>

            <div class="form-group">
              <label for="ingresa una contraseña">Password: </label>
              <input type="password" name="password" class="form-control" id="ingresaContraseña" placeholder="Contraseña">
            </div>
            
               <p>
                <br>
            </p>
            
                <input class="btn btn-primary" type="submit" value="Submit" placeholder="Ingresar">
 
                
            
        </form> 
        
      <p>
        <br>
        <br>
    </p>
    
    <h3>Ingresa con correo y contraseña: </h3>
         <br>
      <form class="col-12" action="LogInController" method="POST">

            <div class="form-group">
                <label for="ingresa un Nombre de Uusuario">correo: </label>
                <input type="text" name="username" class="form-control" id="ingresaApodo" placeholder="Usuario">
            </div>
             
               <p>
                <br>
            </p>

            <div class="form-group">
              <label for="ingresa una contraseña">Password: </label>
              <input type="password" name="password" class="form-control" id="ingresaContraseña" placeholder="Contraseña">
            </div>
            
               <p>
                <br>
            </p>
            
                <input class="btn btn-primary" type="submit" value="Submit" placeholder="Ingresar">
 
                
            
        </form> 
        
    
      <p>
        <br>
        <br>
    </p>
    
    
       <form class="col-12"  method="POST" action="AddAnonimoController">
                                                   
           
             <div class="form-group">
                        
                        <input type="text" id="nombre" name="username" hidden>
             </div>
           
               <div class="form-group">
                        
               <input type="text"  name="tipo" value= 5 hidden>
             </div>
                 
                            
           <input class="btn btn-primary" type="submit" value="EXPLORAR SITIO">
           
       </form>
                        
               
     
              <p>
                <br>
            </p>
             
                
                <button onclick="window.location.href='Registro.jsp'">CREAR UNA CUENTA</button>
          
                
            <p>
                <br>
            </p>
                
       

                
        </div>
      
  

</body>

</html>


<script>

 ;(function() {
		var randomString = function(length) {
			
			var text = "Anonimo";
		
			var possible = "0123456789101112131415161718192021222324252627829";
			
			for(var i = 0; i < length; i++) {
			
				text += possible.charAt(Math.floor(Math.random() * possible.length));
			
			}
			
			return text;
		}

		// random string length
		var random = randomString(4);
		
		// insert random string to the field
		var elem = document.getElementById("nombre").value = random;
		
	})();
    
</script>