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
    


    <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
      <a class="navbar-brand" href="#">GeekSquad</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                  <a class="nav-link" href="#">Games <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">Movies</a>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                      data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Comics
                  </a>
              </li>
              <li class="nav-item">
                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Animation</a>
              </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
          </form>
      </div>
   </nav>

   <div class="container-md">
    <h1 class="center">Bienvenido</h1>
    <h5 class="center"> Es hora de iniciar tu registro</h5>
   </div>

   <div class="container">

    <div class="container py-3">


        <div class="container">

            <p>Poner imagenes</p>

            <!-- bootstrap-imageupload. -->
            <div class="imageupload panel panel-default">
                <div class="panel-heading clearfix">
                    <h3 class="panel-title pull-left">Select Image file</h3>
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default active">File</button>
                        <button type="button" class="btn btn-default">URL</button>
                    </div>
                </div>
                <div class="file-tab panel-body">
                    <label class="btn btn-primary btn-file">
                        <span>Browse</span>
                        <!-- The file is stored here. -->
                        <input type="file" name="image-file">
                    </label>
                    <button type="button" class="btn btn-danger">Delete image</button>
                </div>
                <div class="url-tab panel-body">
                    <div class="input-group">
                        <input type="text" class="form-control hasclear" placeholder="Image URL">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default">Submit</button>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default">Remove</button>
                    <!-- The URL is stored here. -->
                    <input type="hidden" name="image-url">
                </div>
            </div>

        </div>

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
            
            
             <%-- 
            <div class="form-group">
              <label for="ingresaCorreo">Correo</label>
              <input type="text" class="form-control" id="ingresaApodo" placeholder="De preferencia en uso (●'◡'●)">
            </div>
            
            --%>
            
            <div class="form-group" >
                
                <input class="btn btn-primary" type="submit" value="Submit">
                
                <%-- <a class="btn btn-info" href="#" role="button">Registrar</a>--%>
                
            </div>
            
              <a href="Login.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Ingresar</a>
        </form> 
    </div>

   </div>










   <form action="/examples/actions/confirmation.php" method="post">
    <p>
        <input type="file" name="photo" onchange="previewFile(this);" required>
    </p>
    <img id="previewImg" src="/examples/images/transparent.png" alt="Placeholder">
    <p>
        <input type="submit" value="Submit">            
    </p>        
</form>


  </body>



</html>