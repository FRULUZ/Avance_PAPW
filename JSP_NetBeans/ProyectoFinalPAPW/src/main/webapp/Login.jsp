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

      <div class="container">

      <h1>GeekSquad</h1>
      <h2>Informate de lo nuevo del mundo geek!</h2>
        <!----FORM PARA INGRESAR A LA PAGINA--->
        
     
        
         <form class="col-12" action="LogInController" method="POST">

            <div class="form-group">
                <label for="ingresa un Nombre de Uusuario">Username</label>
                <input type="text" name="username" class="form-control" id="ingresaApodo" placeholder="Usuario">
            </div>

            <div class="form-group">
              <label for="ingresa una contraseña">Password</label>
              <input type="password" name="password" class="form-control" id="ingresaContraseña" placeholder="Contraseña">
            </div>
            
            
            <div class="form-group" >
                
                <input class="btn btn-primary" type="submit" value="Submit" placeholder="Ingresar">
                
                <%-- <a class="btn btn-info" href="#" role="button">Registrar</a>--%>
                
            </div>
            
        </form> 
        
   
        <%-- 
   

        
        <section class="form-login" action="LogInController" method="POST">
           
            
             <!----FORM PARA INGRESAR A LA PAGINA--->
            
            <h5>Ingresar cuenta</h5>
            
            <input class="form-group" type="text" name="username"  value="" placeholder="Usuario">
            <input class="form-group" type="password" name="password" value="" placeholder="Contraseña">
            
            <!--- <input class="buttons" type="submit"  name="" value="Ingresar" href="index.jsp"> ---->
            
             <!--- <a href="index.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Ingresar</a>--->
             
             
             <input class="btn btn-primary" type="submit" value="Submit">
             
            
            <p><a href="Registro.jsp">Crear una cuenta</a></p>
            
            
        </section>
  
                
                
                
                
                
          --%>
                
                
                
                
                
        </div>

</body>

</html>