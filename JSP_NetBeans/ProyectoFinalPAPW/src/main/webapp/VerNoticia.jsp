<%-- 
    Document   : VerNoticia
    Created on : Nov 20, 2020, 1:43:48 AM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Noticia</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <script src="/JAVASCRIPT/ARCHIVOS.js"></script>



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

    <link rel="stylesheet" type="text/css" href="/CSS/style.css">


</head>



<body>



    <div class="container">
        <span id="rateMe4" class="feedback"></span>
    </div>


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
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>




<!-- AREA DE LA FOTO Y NOMBRE DEL USUARIO -->

<div class="container">
    <div class="row profile">
        <div class="col-md-3">
            <div class="profile-sidebar">
                <!-- SIDEBAR USERPIC -->
                <div class="profile-userpic">
                    <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid" />
                </div>
                <!-- END SIDEBAR USERPIC -->
                
                <!-- SIDEBAR USER TITLE -->
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">
                      Nombre del usuario
                    </div>
                    <div class="profile-usertitle-job">
                        Usuario cómun/editor/creador
                    </div>
                </div>
                <!-- END SIDEBAR USER TITLE -->
                <!-- SIDEBAR BUTTONS -->
                <div class="profile-userbuttons">
                    <button type="button" class="btn btn-success btn-sm">Ver perfil</button>
                </div>
            </div>
        </div>
</div>
<br>
<br>



<!-- FIN DE DATOS DEL USUARIO -->

    <div class="container-md">
        <br><br>

        <h1 style="color: #002f59;">Noticia del día</h1>
        <h5 style="color: #002f59;">Escrita por alguien</h5>
        <h6 style="color: #002f59;">dia 00 del 00 de 00</h6>
    </div>

    <div class="container-sm">
        <img src="Insert_image_here.png" alt="Insert Image Here" class="mx-auto d-block" style="width:50%">
    </div>




                <div class="profile-content">
                   Aquí va la noticia
                </div>



        <!----EN ESTA PARTE VA LA SECCION PARA CALIFICAR CON ESTRELLAS LA NOTICIA--->
        <br><br>
        <h1>Califica esta noticia</h1>
        <div class="rating"> <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
            <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> <input type="radio"
                name="rating" value="3" id="3"><label for="3">☆</label> <input type="radio" name="rating" value="2"
                id="2"><label for="2">☆</label> <input type="radio" name="rating" value="1" id="1"><label
                for="1">☆</label>

        </div>

        <a href="#" class="btn btn-primary btn-lg disabled" role="button" aria-disabled="false">No me gusta</a>
        <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Me gusta</a>


    </div>


    <!----EN ESTA PARTE VA LA SECCION DE LA BARRA DE PROGRESO DE LAS ESTRELLAS---->

    <div class="container mt-5">
        <div class="card">
            <div class="row no-gutters">
                <div class="col-md-4 border-right">
                    <div class="ratings text-center p-4 py-5"> <span class="badge bg-success">4.1 <i
                                class="fa fa-star-o"></i></span> <span class="d-block about-rating">MUY BUENA CALIFICACION</span>
                        <span class="d-block total-ratings">183 votos</span> </div>
                </div>
                <div class="col-md-8">
                    <div class="rating-progress-bars p-3 mt-2">
                        <div class="d-flex align-items-center"> <span class="stars"> <span>5 <i
                                        class="fa fa-star text-success"></i></span> </span>
                            <div class="col px-2">
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 80%;"
                                        aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div> <span class="percent"> <span>80%</span> </span>
                        </div>
                        <div class="d-flex align-items-center"> <span class="stars"> <span>4 <i
                                        class="fa fa-star text-custom"></i></span> </span>
                            <div class="col px-2">
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar bg-custom" role="progressbar" style="width: 65%;"
                                        aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div> <span class="percent"> <span>65%</span> </span>
                        </div>
                        <div class="d-flex align-items-center"> <span class="stars"> <span>3 <i
                                        class="fa fa-star text-primary"></i></span> </span>
                            <div class="col px-2">
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 55%;"
                                        aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div> <span class="percent"> <span>55%</span> </span>
                        </div>
                        <div class="d-flex align-items-center"> <span class="stars"> <span>2 <i
                                        class="fa fa-star text-warning"></i></span> </span>
                            <div class="col px-2">
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 35%;"
                                        aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div> <span class="percent"> <span>35%</span> </span>
                        </div>
                        <div class="d-flex align-items-center"> <span class="stars"> <span>1 <i
                                        class="fa fa-star text-danger"></i></span> </span>
                            <div class="col px-2">
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 65%;"
                                        aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div> <span class="percent"> <span>65%</span> </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!----EN ESTA PARTE VA LA SECCION DE COMENTARIOS---->

    <div class="container">

        <br><br>
        <h1>Deja tú comentario: </h1>
        <br><br>
        <div class="row bootstrap snippets bootdeys">
            <div class="col-md-8 col-sm-12">
                <div class="comment-wrapper">
                    <div class="panel panel-info">

                        <div class="panel-body">
                            <textarea class="form-control" placeholder="Escribe un comentario..." rows="3"></textarea>
                            <br>
                            <button type="button" class="btn btn-info pull-right">Postear</button>
                            <div class="clearfix"></div>
                            <hr>
                            <ul class="media-list">
                                <li class="media">

                                    <img src="https://image.ibb.co/jw55Ex/def_face.jpg"
                                        class="img img-rounded img-fluid" />

                                    <div class="media-body">
                                        <span class="text-muted pull-right">
                                         <button type="button" class="btn btn-danger" onclick="myFunction()">Reportar</button>
                                 
                                         <script>
                                         function myFunction() {
                                           var txt;
                                           var r = confirm("Desea reportar este comentario?");
                                           if (r == true) {
                                             txt = "You pressed OK!";
                                           } else {
                                             txt = "You pressed Cancel!";
                                           }
                                           document.getElementsByClassName("btn> btn-danger").innerHTML = txt;
                                         }
                                         </script>





                                            <small class="text-muted">Hace 5 minutos</small>
                                        </span>


                                        <strong class="text-success">Usuario anonimo</strong>
                                        <p>
                                            Aquí va el comentario
                                        </p>
                                    </div>
                                </li>
                                <li class="media">
                                    <a href="#" class="pull-left">
                                        <img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
                                    </a>
                                    <div class="media-body">
                                        <span class="text-muted pull-right">
                                            <small class="text-muted">30 min ago</small>
                                        </span>
                                        <strong class="text-success">Nombre del usuario</strong>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Lorem ipsum dolor <a href="#">#ipsumdolor </a>adipiscing elit.
                                        </p>
                                    </div>
                                </li>
                                <li class="media">
                                    <a href="#" class="pull-left">
                                        <img src="https://bootdey.com/img/Content/user_3.jpg" alt="" class="img-circle">
                                    </a>
                                    <div class="media-body">
                                        <span class="text-muted pull-right">
                                            <small class="text-muted">30 min ago</small>
                                        </span>
                                        <strong class="text-success">@JohnNida</strong>
                                        <p>
                                            Lorem ipsum dolor <a href="#">#sitamet</a> sit amet, consectetur adipiscing
                                            elit.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>




</body>

</html>