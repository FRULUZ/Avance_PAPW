<%-- 
    Document   : Registro
    Created on : Nov 20, 2020, 1:34:33 AM
    Author     : EDGAR
--%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
  <head>
    <title>Registro</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="CSS/apariencia.css">



    
  </head>


  
  <body>
    

   <jsp:include page="NavBar.jsp"/>

    <p>
        <br>

    </p>
    
  

   <div class="container-md">
    <h1 class="center">Bienvenido</h1>
    <h5 class="center"> Es hora de iniciar tú registro</h5>
   </div>

   <div class="container">

    <div class="container py-3">


        <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="js/bootstrap-imageupload/bootstrap-imageupload.js"></script>

        <script>
            var $imageupload = $('.imageupload');
            $imageupload.imageupload();

        </script>



    <form class="col-12"  method="POST" enctype="multipart/form-data" action="SignInController"  name="Form1" onsubmit="return emptyValidation()" required>
            
    </div>


    <div class="form-group">
        <label for="image">Imagen del perfil</label>
        <input type="file" class="form-control" name="image" id="image">
        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
    </div>

            <div class="form-group">
                <label for="ingresa un Nombre de Uusuario">Username</label>
                <input type="text"  name="username" pattern=".{3,}" title="Debe contener al menos 3 caracteres o más." class="form-control" id="ingresaApodo" placeholder="Username a tu gusto (●ˇ∀ˇ●)" required>
            </div>
       
       
   
       
         <div class="form-group">
              <label for="ingresa una contraseña">Password</label>
              <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Debe contener al menos un número, una mayúscula, una minuscula y al menos 8 caracteres o más." class="form-control" id="ingresaContraseña" placeholder="Que no se te olvide (～￣▽￣)～" required>
            </div>
       
       
          
            
            <div class="form-group">
                
         
                
                <div>
                <label for="emailAddress">Correo</label><br>
                <input id="emailAddress" type="email" size="64" maxLength="64" required
                       placeholder="De preferencia en uso (●'◡'●)" name="correo">
                </div>

                
                
             </div>
            
             <div class="form-group">
              <label for="ingresa una Red Social">Red social</label>
              <input type="text"   name="red" class="form-control" id="ingresaCorreo" placeholder="Ingresa nombre de la cuenta" required>
            </div>
            
            
                <label for="image">Tipo de usuario a registrar: </label>
            
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="tipo" id="inlineRadio1" value= 1 required>
                <label class="form-check-label" for="inlineRadio1">Usuario cómun</label>
            </div>
            
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="tipo" id="inlineRadio2" value= 2 required>
                <label class="form-check-label" for="inlineRadio2">Editor</label>
            </div>
            
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="tipo" id="inlineRadio3" value= 3 required>
                <label class="form-check-label" for="inlineRadio3">Creador de contenido</label>
            </div>
            
              
            
            <div class="form-group" >
                
                <input class="btn btn-primary" type="submit" value="Crear usuario">
   
            </div>
            
              
        </form> 
        
        
   
   
        
        
    </div>

   </div>


  </body>



</html>