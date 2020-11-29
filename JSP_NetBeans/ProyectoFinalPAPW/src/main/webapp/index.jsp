<%-- 
    Document   : Principal
    Created on : Nov 20, 2020, 1:10:10 AM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HOME</title>
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

    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">


</head>

<body>

    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">Geek zone</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="VerNoticia.jsp">Noticias <span class="sr-only">(current)</span></a>

                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="CreaNoticia.jsp">Redactar noticia<span class="sr-only">(current)</span></a>
                </li>


                <li class="nav-item active">
                    <a class="nav-link" href="Editor.jsp">Editor <span class="sr-only">(current)</span></a>
                </li>
                
                  <li class="nav-item active">
                    <a class="nav-link" href="Login.jsp">Log In <span class="sr-only">(current)</span></a>
                </li>


            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
            </form>
        </div>
    </nav>


    <p>
        <br>

    </p>

    <div class="carusin">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/538/167/large/jacen-chio-1.jpg?1600896024"
                        class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Noticia destacada de la semana</h5>
                        <p>Aquí deberá ir el subtítulo de la noticia</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/538/167/large/jacen-chio-1.jpg?1600896024"
                        class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Noticia #2 destacada de la semana</h5>
                        <p>Aquí deberá ir el subtítulo de la noticia</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/538/167/large/jacen-chio-1.jpg?1600896024"
                        class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Noticia #3 destacada de la semana</h5>
                        <p>Aquí deberá ir el subtítulo de la noticia</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <p>
        <br>
        <br>
        <br>
        <br>
    </p>


    <div class="container">

        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/538/167/large/jacen-chio-1.jpg?1600896024"
                        class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/538/179/large/jacen-chio-3.jpg?1600896060"
                        class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div id="mainnews">

            <div class="row">

                <div class="card col">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/352/717/large/sabina-finx-diorama1.jpg?1600343913"
                        class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la noticia</h5>
                        <p class="card-text">Aquí debería ir el subtítulo de la noticia</p>
                        <a href="#" class="btn btn-primary">Leer más</a>
                    </div>
                </div>


                <div class="card col">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/352/717/large/sabina-finx-diorama1.jpg?1600343913"
                        class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la noticia</h5>
                        <p class="card-text">Aquí debería ir el subtítulo de la noticia</p>
                        <a href="#" class="btn btn-primary">Leer más</a>
                    </div>
                </div>


                <div class="card col">
                    <img src="https://cdnb.artstation.com/p/assets/images/images/030/352/717/large/sabina-finx-diorama1.jpg?1600343913"
                        class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la noticia</h5>
                        <p class="card-text">Aquí debería ir el subtítulo de la noticia</p>
                        <a href="#" class="btn btn-primary">Leer más</a>
                    </div>
                </div>

            </div>

        </div>

    </div>

</body>


<p>
    <br>

</p>

<footer>



    <div class="footer-limiter">


        <div class="footer-right">
    

            <a href="https://github.com/FRULUZ/Avance_PAPW"><i class="fa fa-github"></i></a>
        
        </div>



        <div class="footer-left">

            <p class="footer-links">Visita nuestras redes sociales</p>

            <p>Bitsonte studios © 2020</p>
            
        </div>

    </div>

</footer>




</html>