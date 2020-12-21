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

      <p>
        <br> <br>
        <br> <br>
        <br> <br>
        <br> <br>
      </p>

      <h1>GeekSquad</h1>
      <h2>Informate de lo nuevo del mundo geek!</h2>
        <!----FORM PARA INGRESAR A LA PAGINA--->


    <p>
        <br>
        <br>
    </p>
        
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
            
            <div class="form-group" >
                
                <input class="btn btn-primary" type="submit" value="Submit" placeholder="Ingresar">
               
            </div>
                
                   <p>
                <br>
            </p>
                
                
                
                <div class="form-group">
                 <a href="Registro.jsp" class="btn btn-primary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Crear una cuenta</a>
                </div>
                
            
                <div class="form-group">
                 <a href="MainPageController" class="btn btn-primary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">ENTRAR</a>
                </div>
                
            
        </form> 
        
  
                
                
                
        </div>

</body>

</html>