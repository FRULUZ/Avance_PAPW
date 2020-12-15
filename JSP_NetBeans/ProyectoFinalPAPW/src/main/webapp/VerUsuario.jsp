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
        
        <link rel="stylesheet" type="text/css" href="/CSS/logoff_style.css">

</head>

<body>

    <!----EN ESTA PARTE VA EL NAVBAR--->

 <jsp:include page="NavBar.jsp"/>

    <p>
        <br>

    </p>



    <!----FIN DEL NAVBAR--->


    <!--------->


    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">


        <div class="content-panel">
            <h3 class="fieldset-title">Perfil del usuario</h3>
            <form class="form-horizontal">
                <fieldset class="fieldset">
            
                    
                    <img src=<%= session.getAttribute("image")%> class="img-thumbnail" alt="...">
                    
                    <div class="form-group">
                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Nombre de usuario</label>
                        <div class="col-md-10 col-sm-9 col-xs-12">
                             <input class="form-control" type="text" placeholder=<%= session.getAttribute("username")%> readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        
                        
                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Id</label>
                        <div class="col-md-10 col-sm-9 col-xs-12">
                           <input class="form-control" type="text" placeholder=<%= session.getAttribute("id")%> readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tipo de usuario</label>
                        <div class="col-md-10 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" value=<%= session.getAttribute("tipo")%> readonly>
                        </div>
                    </div>
                    
                    <div>
                        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Noticias que me gustan
                        </button>

                        <class class="dropdown-menu">
                            <a class="dropdown-item" href="#">Noticia me gusta 1</a>
                            <a class="dropdown-item" href="#">Noticia me gusta 2</a>
                            <a class="dropdown-item" href="#">Noticia me gusta 3</a>

                        </class>

                    </div> 

                         
                </fieldset>
             
                <hr>
                <div class="form-group">
                    <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                        <input class="btn btn-primary" type="submit" value="Modificar datos">
                         <input class="btn btn-primary" type="submit" value="Eliminar cuenta">
                         <a class="btn btn-primary" href="Logoff.jsp" role="button">Salir</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </section>
    </div>
    </div>



</body>

</html>