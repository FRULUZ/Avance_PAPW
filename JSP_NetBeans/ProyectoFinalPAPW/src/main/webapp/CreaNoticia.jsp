<%-- 
    Document   : CreaNoticia
    Created on : Nov 20, 2020, 1:38:39 AM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear una nueva noticia</title>

    <link rel="stylesheet" href="/CSS/estilos.css">
    <script src="/JAVASCRIPT/ARCHIVOS.js"></script>

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


     <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
</head>



<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Geek zone</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="#">Noticias <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="#">Redactar noticia<span class="sr-only">(current)</span></a>
                </li>


                <li class="nav-item active">
                    <a class="nav-link" href="#">Editor <span class="sr-only">(current)</span></a>
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

  <header class="text-white text-center">
    <h1 class="display-4">CREAR UNA NOTICIA</h1>
    <p class="lead mb-0">Redacta una nueva noticia:</p>
    <img src="https://res.cloudinary.com/mhmd/image/upload/v1564991372/image_pxlho1.svg" alt="" width="150" class="mb-4">
</header>

<p>
    <br>

</p>

<div class="row py-4">
    <div class="col-lg-6 mx-auto">

        <!-- Upload image input-->
        <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
            <input id="upload" type="file" onchange="readURL(this);" class="form-control border-0">
            <label id="upload-label" for="upload" class="font-weight-light text-muted">Cargar una imágen</label>
            <div class="input-group-append">
                <label for="upload" class="btn btn-light m-0 rounded-pill px-4"> <i class="fa fa-cloud-upload mr-2 text-muted"></i><small class="text-uppercase font-weight-bold text-muted">Elije un archivo</small></label>
            </div>
        </div>

        <!-- Uploaded image area-->
        <p class="font-italic text-white text-center">La(s) imágenes cargadas se mostrarán en la caja de abajo: </p>
        <div class="image-area mt-4"><img id="imageResult" src="#" alt="" class="img-fluid rounded shadow-sm mx-auto d-block"></div>

    </div>
</div>
</div>



<div class="textin">
    <h1>Redacta una nueva noticia: </h1>
</div>


    <div class="container">


        <div class="container py-5">
            <form>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Título de la noticia</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Título">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Categoría</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Videojuegos</option>
                        <option>Manga</option>
                        <option>Anime</option>
                        <option>Cartoons</option>
                        <option>Comics</option>
                        <option>Expos/Eventos</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Redacta la noticia</label>
                    <select multiple class="form-control" id="exampleFormControlSelect2">
                    </select>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlInput1">Autor de la noticia</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Autor">
                </div>
  
            </form> 

        
        
    </div>


<div class="botoncin">

    <button class="btn btn-primary" type="submit">Subir noticia</button>

</div>    
    


<p>
    <br>

</p>

<footer>

    <div class="footer-limiter">

        <div class="footer-right">

            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-github"></i></a>

        </div>

        <div class="footer-left">

            <p class="footer-links">Visita nuestras redes sociales</p>

            <p>Bitsonte studios © 2020</p>
        </div>

    </div>

</footer>



</body>


</html>