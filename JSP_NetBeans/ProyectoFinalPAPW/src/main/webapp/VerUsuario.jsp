<%-- 
    Document   : VerUsuario
    Created on : Nov 20, 2020, 1:45:57 AM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Usuario</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <script src="/JAVASCRIPT/archivos.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">

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
        
        <link rel="stylesheet" type="text/css" href="/CSS/estilos.css">

</head>

<body>

    <!----EN ESTA PARTE VA EL NAVBAR--->

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
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">DC</a>
                        <a class="dropdown-item" href="#">Marvel</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Image</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Animation</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Buscar noticia</button>
            </form>
        </div>
    </nav>



    <!----FIN DEL NAVBAR--->


    <!--------->


    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">


        <div class="content-panel">
            <h3 class="fieldset-title">Perfil del usuario</h3>
            <form class="form-horizontal">
                <fieldset class="fieldset">
                    
                    <div class="form-group avatar">
                        <figure class="figure col-md-2 col-sm-3 col-xs-12">
                            <img class="img-rounded img-responsive" src="https://image.ibb.co/jw55Ex/def_face.jpg"
                                alt="">
                        </figure>
                        <div class="form-inline col-md-10 col-sm-9 col-xs-12">
                            <input type="file" class="file-uploader pull-left">
                            <button type="submit" class="btn btn-sm btn-default-alt pull-left">Update Image</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Nombre de usuario</label>
                        <div class="col-md-10 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" value="Rebecca">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Correo</label>
                        <div class="col-md-10 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" value="Rebecca">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tipo de usuario</label>
                        <div class="col-md-10 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" value="Solo ver no actualizar" readonly>
                        </div>
                    </div>
      
                </fieldset>
             
                <hr>
                <div class="form-group">
                    <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                        <input class="btn btn-primary" type="submit" value="Modificar datos">
                        <button type="button" class="btn btn-danger">Eliminar cuenta</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </section>
    </div>
    </div>




      <div class="container">
        <h2>Notificación</h2>
    
        <div class="alert alert-info">
          <strong>Info!</strong> Su noticia no fue publicada por falta de texto solo para creadores.
        </div>
        </div>



        <div class="btn-group">
            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Noticias que me gustan
            </button>
            <class class="dropdown-menu">
              <a class="dropdown-item" href="#">Noticia me gusta 1</a>
              <a class="dropdown-item" href="#">Noticia me gusta 2</a>
              <a class="dropdown-item" href="#">Noticia me gusta 3</a>
    
          </class>


      </div>
      



</body>

</html>