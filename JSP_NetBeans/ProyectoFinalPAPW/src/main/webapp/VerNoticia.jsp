<%-- 
    Document   : VerNoticia
    Created on : Nov 20, 2020, 1:43:48 AM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.dao.CommentaryDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Commentary"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        String idNews = request.getParameter("id");
    
        List<Commentary> commentaries = CommentaryDAO.getCommentariesByNews(Integer.parseInt(idNews, 10));
        request.setAttribute("Commentaries", commentaries);
        
         
        News element = NewsDAO.getNew(Integer.parseInt(idNews, 10));
        request.setAttribute("New", element);
%>

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

    <link rel="stylesheet" type="text/css" href="CSS/style.css">
   
    
    
</head>



<body>

    
       <jsp:include page="NavBar.jsp"/>

    <p>
        <br>

    </p>
    
    

    <div class="container">
        <span id="rateMe4" class="feedback"></span>
    </div>

<div class="container">
   
   
    
    
<br>
<br>



<!-- FIN DE DATOS DEL USUARIO -->

<div class="container-md">
    <br><br>

    <h1 style="color: #002f59;"><%= element.getTitle()%></h1>

</div>
    

     <small class="col-12 text-muted">Categoría: <%= element.getCategory().getName()%></small>

  
<!-- FOTOS Y VIDEO DE LA NOTICIA -->


<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src=<%= element.getPathImage()%> class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src=<%= element.getPathImage2()%> class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src=<%= element.getPathImage3()%> class="d-block w-100" alt="...">
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
        
<br>
<br>

        
        
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src=<%= element.getVideo() %> allowfullscreen></iframe>
</div>

<br>
<br>

     
   <!-- FIN FOTOS Y VIDEO DE LA NOTICIA --> 
   
   

<div class="profile-content"> <%= element.getDescription()%> </div>






<!----EN ESTA PARTE VA LA SECCION PARA CALIFICAR CON ESTRELLAS LA NOTICIA--->
<br><br>
<h1>Califica esta noticia</h1>
<div class="rating"> 
    
  <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
  <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label> <input type="radio"
  name="rating" value="3" id="3"><label for="3">☆</label> <input type="radio" name="rating" value="2"
 id="2"><label for="2">☆</label> <input type="radio" name="rating" value="1" id="1"><label
 for="1">☆</label>

</div>

<a href="#" class="btn btn-primary btn-lg disabled" role="button" aria-disabled="false">No me gusta</a>
<a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Me gusta</a>


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
                            
                            
                            
                             <%
                                  if ((int) session.getAttribute("tipo") != 2) {
                              %>
                            
                              
                              
                              
                            <form method="POST" action="CommentaryController" >
                            <textarea class="form-control" placeholder="Escribe un comentario..." rows="3"  name="commentary" id="commentary"></textarea>
                            <br>
                            <input type="submit" class="btn btn-success" value="Postear comentario">
                            <input type="hidden" name="idNews" value="<%= element.getId()%>">
                            
                            </form>
                           
                             <%
                                 }
                              %>
                                            
                            
                            <div class="clearfix"></div>
                            <hr>
                            <ul class="media-list">
                                <li class="media">

                                 
                                   
                                 
                     <%
                        for (Commentary commentary : commentaries) {
                    %>
                
             
                                        
                                         <li class="media">
                                    <a href="#" class="pull-left">
                                        <img src="https://bootdey.com/img/Content/user_3.jpg" alt="" class="img-circle">
                                    </a>
                                    <div class="media-body">
                                       
                                        <strong class="text-success"><%= commentary.getUser().getUsername() %></strong>
                                        <p>
                                            <%= commentary.getContent() %>
                                            
                                            <%
                                                if ((int) session.getAttribute("tipo") == 4) {
                                            %>
                                            
                                        </p>
                                         <span class="pull-left">
                                           <a class="btn btn-danger" href="DeleteCommentaryController?id=<%= commentary.getId() %>&idNews=<%= element.getId() %>">Eliminar</a>
                                        </span>
                                        
                                           <%
                                               }
                                           %>
                                        
                                          <span class="pull-right">
                                           <a class="float-right btn text-white btn-danger"> <i class="fa fa-heart"></i> Like</a>
                                           <a class="float-right btn btn-outline-primary ml-2"> <i class="fa fa-reply"></i> Reply</a>
                                        </span>
                                             
                    
                                    </div>
                                </li>
                                
                  
                                
  
                                 <%
                        }
                    %>

                                
                             
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>




</body>

</html>