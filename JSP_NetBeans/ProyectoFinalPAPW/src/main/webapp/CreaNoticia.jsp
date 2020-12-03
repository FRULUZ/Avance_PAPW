<%-- 
    Document   : CreaNoticia
    Created on : Nov 20, 2020, 1:38:39 AM
    Author     : EDGAR
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
List<Category> categories = (List<Category>)request.getAttribute("Categories");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear una nueva noticia</title>

    <link rel="stylesheet" href="CSS/estilote.css">
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

    
    
        <jsp:include page="NavBar.jsp"/>
    
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



    <div class="container">
        
               <form  class="col-12" method="POST" enctype="multipart/form-data" action="AddNewsController">
                
                <h1>Redacta una nueva noticia: </h1>
                
                <div class="form-group">
                    <label for="exampleFormControlInput1">Título de la noticia</label>
                    <input type="text" class="form-control" id="title" name="title">
                </div>
                
                  <div class="form-group">
                 <label for="descripcion">Descripción</label>
                <textarea class="form-control" id="descripcion"  name="descripcion" rows="3"></textarea>
                  </div>
             
                
                 <div class="form-group">
                    <label for="category">Categorías</label>
                    <input type="text" class="form-control" id="category" name="category">
                
                    
                </div>
                        
                         <div class="form-group">
                        <label for="image">Imagen</label>
                        <input type="file" class="form-control" name="image" id="image">
                        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                    </div>

                
                
                <div class="botoncin">
                    <button class="btn btn-primary" type="submit">Subir noticia</button>
                </div>    
                  
               
                    
            </form> 

        
        
    </div>    


<p>
    <br>

</p>

<footer>

    <div class="footer-limiter">


        <div class="footer-left">

            <p>Bitsonte studios © 2020</p>
        </div>

    </div>

</footer>



</body>


</html>