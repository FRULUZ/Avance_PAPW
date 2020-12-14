<%-- 
    Document   : Registro
    Created on : Nov 20, 2020, 1:34:33 AM
    Author     : EDGAR
--%>

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



    <meta charset="utf-8">
<title>jQuery Preview an Image Before it is Uploaded</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    function previewFile(input){
        var file = $("input[type=file]").get(0).files[0];
 
        if(file){
            var reader = new FileReader();
 
            reader.onload = function(){
                $("#previewImg").attr("src", reader.result);
            }
 
            reader.readAsDataURL(file);
        }
    }
</script>

    
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



        <form class="col-12" action="SignInController" method="POST">

            <div class="form-group">
                <label for="ingresa un Nombre de Uusuario">Username</label>
                <input type="text" name="username" class="form-control" id="ingresaApodo" placeholder="Username a tu gusto (●ˇ∀ˇ●)">
            </div>

            <div class="form-group">
              <label for="ingresa una contraseña">Password</label>
              <input type="password" name="password" class="form-control" id="ingresaContraseña" placeholder="Que no se te olvide (～￣▽￣)～">
            </div>
            
            
              
            <div class="form-group">
              <label for="ingresaCorreo">Correo</label>
              <input type="text"   name="correo" class="form-control" id="ingresaCorreo" placeholder="De preferencia en uso (●'◡'●)">
            </div>
            
            
            
            <div class="form-group" >
                
                <input class="btn btn-primary" type="submit" value="Crear usuario">
                
                <%-- <a class="btn btn-info" href="#" role="button">Registrar</a>--%>
                
            </div>
            
              <a href="Login.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Ingresar cuenta</a>
        </form> 
    </div>

   </div>


  </body>



</html>