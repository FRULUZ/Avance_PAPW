<%-- 
    Document   : VerNoticia
    Created on : Nov 20, 2020, 1:43:48 AM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.dao.ReplyDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Reply"%>
<%@page import="com.mycompany.proyectofinalpapw.models.User"%>
<%@page import="com.mycompany.proyectofinalpapw.models.NewsLikes"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.CommentaryDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Commentary"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewLikesDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.UserDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        String idNews = request.getParameter("id");
    
        List<Commentary> commentaries = CommentaryDAO.getCommentariesByNews(Integer.parseInt(idNews, 10));
        request.setAttribute("Commentaries", commentaries);
        
        
        List<Reply> respuestas = ReplyDAO.getReplyByNews(Integer.parseInt(idNews, 10));
        request.setAttribute("Respuestas", respuestas);
        
         
        News element = NewsDAO.getNew(Integer.parseInt(idNews, 10));
        request.setAttribute("New", element);
        

        List<NewsLikes> newslikes = NewLikesDAO.getNewsLike();
        request.setAttribute("Newslikes", newslikes);    

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

    <h1><%= element.getTitle()%></h1>

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
<h1>Califica esta noticia: </h1>

<br>


<form method="POST" action="RankController">

<label for="numberSize">Califica esta noticia con un valor entre el 1(mínimo) al 10 (máximo): </label>

<input name="rank"  type="number" min="1" max="10" id="numberSize" oninput="(!validity.rangeOverflow||(value=10)) && (!validity.rangeUnderflow||(value=1)) &&
       (!validity.stepMismatch||(value=parseInt(this.value)));" required>

  
<input type="hidden" name="id" value="<%=element.getId()%>">

<input type="submit"  class="btn btn-success" value="Votar">

<div class="form-group">
    <label>Calificación promedio de esta noticia por los usuarios: </label>
    <input class="form-control" name="about" value="<%= element.getRank()%>" type="text">

</div>


</form>


<br>
<br>
<h1>Agregala como favorita: </h1>

<br>

      <form method="POST" action="NewLikesController">



          <input type="hidden" name="idNews" value="<%=element.getId()%>">
          <input type="hidden" name="idUser" value="<%=session.getAttribute("id")%>">
          <input type="hidden" name="valor" value=1>  
          <input type="hidden" name="title" value="<%=element.getTitle()%>">  
          
           <input type="submit"  class="btn btn-success" value="me gusta">
          
          <%
             
             for (NewsLikes megustan : newslikes) {
                
          %>
          
          
           <%
                    if(megustan.getNews().getId() == (int)element.getId() && megustan.getUser() == (int)session.getAttribute("id")) {
                %>
                
                
                <input type="submit" disabled class="btn btn-success" value="me gusta">
                  
                <a class="btn btn-danger" href="DeleteNewsLikeController?id=<%=megustan.getId()%>">Ya no me gusta</a>
   
         
           <%
                   }else{
           %>

           <input type="submit"  class="btn btn-success" value="me gusta">
           
            <%
                   }
           %>
           
               <%
                   }
           %>
           
      </form>

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
                            if ((int)session.getAttribute("tipo") == 5) {
                        %>
                                     
 
                 
       
                        <form class="col-12"  method="POST"  action="ProvitionalNameController">
                        
                              
                        
                        <div class="form-group">
                                <input class="form-control" type="text"   name="id" value=<%= session.getAttribute("id")%> hidden>
 
                        </div>
                          
                            
                      <div class="form-group">
                                <input class="form-control" name="username" type="text" required>
                        </div>
                            <br>
                        
                         
                        
                        <div class="botoncin">
                            <button class="btn btn-primary" type="submit">CAMBIAR POR PROVISIONAL</button>
                        </div>  
                 
                        </form>
                        
                            
                            <br>
                            
                          <%
                            }
                        %>
                        
                              
                            <form method="POST" action="CommentaryController" >
                                
             
                                
                                <div class="form-group">
                                    <input type="text" id="date" name="date" hidden/>
                                </div>
                 

                                <br>

                                <div class="form-group">
                                    <input type="text" id="hour"  name ="hour" hidden/>
                                </div>
                            
                                <br>
                                
                            <textarea class="form-control" placeholder="Escribe un comentario..." rows="3"  name="commentary" id="commentary" required></textarea>
                            <br>
                             
                   
                            <input type="text" name="idNews" value="<%= element.getId()%>" hidden>
                            <input type="text" name="idUser" value="<%= session.getAttribute("id")%>" hidden>
                            <input type="submit" class="btn btn-success" value="Postear comentario">
                            
                            </form>
   
                            <div class="clearfix"></div>
                            <hr>
                            <ul class="media-list">
                                <li class="media">

                                 
                                   
                                 
                     <%
                        for (Commentary commentary : commentaries) {
                    %>
                
         
                                    <li class="media">
                                   
                                    <div class="media-body">
                                       
                                         <br>

                                        <span class="text-muted pull-right">
                                            <small class="text-muted">Comentado a las <%= commentary.getHora()%> horas</small>
                                        </span>
                                        
                                        <br>


                                         <span class="text-muted pull-right">
                                            <small class="text-muted">Comentado el día: <%= commentary.getFecha()%> </small>
                                        </span>
                                        
                                     
                                        
                                        <strong class="text-success"><%= commentary.getUser().getUsername() %></strong>
                                        <p>
                                            <%= commentary.getContent() %>
                                            
                                       
                                             <%
                            if ((int)session.getAttribute("tipo") == 4) {
                        %>
                                        </p>
                                         <span class="pull-left">
                                           <a class="btn btn-danger" href="DeleteCommentaryController?id=<%= commentary.getId() %>&idNews=<%= element.getId() %>">Eliminar</a>
                                        </span>
                                        
                                            <%
                                                }
                        %>
                                        
                                        
                                          <span class="pull-right">
                                           <a href="ResLikeController?id=<%=commentary.getId()%>&idNews=<%= element.getId() %>" class="float-right btn text-white btn btn-danger">  <i class="fa fa-heart"></i> Dislike</a>
                                           <a href="AddLikeController?id=<%=commentary.getId()%>&idNews=<%= element.getId() %>" class="float-right btn text-white btn btn-success">  <i class="fa fa-heart"></i> Likes <%= commentary.getLikes()%></a>
                                          </span>
                                             
                    
                                    </div>
                                </li>
                                <br>
                                           <strong class="text">Respuestas: </strong>
                                <br>
                                
                                 <%
                        for (Reply responder : respuestas) {
                    %>
                    
                    
                           <%
                        if (commentary.getId() == responder.getParent()) {
                    %>
                    
                    
                     <ul class="comments-list reply-list">
 
                                    <br>
                      <li class="media">
                                   
                                    <div class="media-body">
                                       
                                        
                                        <span class="text-muted pull-right">
                                            <small class="text-muted">Comentado a las <%= responder.getHora()%> horas</small>
                                        </span>
                                        
                                        <br>


                                         <span class="text-muted pull-right">
                                            <small class="text-muted">Comentado el día: <%= responder.getFecha()%> </small>
                                        </span>
                                        
                                     
                                        
                                        <strong class="text-success"><%= responder.getUser().getUsername()%></strong>
                                        <p>  <%= responder.getContent() %> </p>
            
                                              
                                        
                                          <span class="pull-right">
                                           <a href="ResLikeReplyController?id=<%=responder.getId()%>&idNews=<%= element.getId() %>" class="float-right btn text-white btn btn-danger">  <i class="fa fa-heart"></i> Dislike</a>
                                           <a href="AddLikeReplyController?id=<%=responder.getId()%>&idNews=<%= element.getId() %>" class="float-right btn text-white btn btn-success">  <i class="fa fa-heart"></i> Likes <%= responder.getLikes()%></a>
                                          </span>
                                             
                    
                                            
                                            
                                    </div>
                                </li>
                     </ul>
                                   
                       <%
                           }
                    %>
                    
                      <%
                           }
                    %>
                    
                    <br>
       
                                <!-- Respuestas de los comentarios -->
                                <ul class="comments-list reply-list">
                                   
                                    
                                                 
                            <form method="POST" action="ResponderController" >
                                
                                
              
                                <div class="form-group">
                                    <input type="text" id="date2" name="date" hidden/>
                                </div>
                                <br>

                                <div class="form-group">
                                    <input type="text" id="hour2"  name ="hour" hidden/>
                                </div>
                            
                                <br>
                                
                                
                             
                            <textarea class="form-control" placeholder="Escribe una respuesta..." rows="3"  name="commentary" id="commentary" required></textarea>
                            <br>
                            
                            
                             
                   
                            <input type="text" name="idComentario" value="<%= commentary.getId()%>" hidden>
                            <input type="text" name="idNews" value="<%= element.getId()%>" hidden>
                            <input type="text" name="idUser" value="<%= session.getAttribute("id")%>" hidden>
                            <input type="submit" class="fa fa-reply" value="Responder">
                            
                            </form>

                        
                            </ul>

                                 <%
                        }
                    %>

                                
                             
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>




</body>

</html>



<script>

    $(document).ready( function() {
    var now = new Date();
    var today = now.getFullYear() + '-' + (now.getMonth() + 1) + '-' + now.getDate();
    $('#datePicker').val(today);
});
    
    
</script>


<script>
var dt = new Date();
document.getElementById("datetime").innerHTML = dt.toLocaleTimeString();
</script>


<script>
var date2 = new Date();
document.getElementById("date2").value = date2.getFullYear() + "-" + (date2.getMonth()<10?'0':'') + (date2.getMonth() + 1) + "-" + (date2.getDate()<10?'0':'') + date2.getDate();
document.getElementById("hour2").value = (date2.getHours()<10?'0':'') + date2.getHours()  + ":" + (date2.getMinutes()<10?'0':'')  + date2.getMinutes();
</script>



<script>
var date2 = new Date();
document.getElementById("date").value = date2.getFullYear() + "-" + (date2.getMonth()<10?'0':'') + (date2.getMonth() + 1) + "-" + (date2.getDate()<10?'0':'') + date2.getDate();
document.getElementById("hour").value = (date2.getHours()<10?'0':'') + date2.getHours()  + ":" + (date2.getMinutes()<10?'0':'')  + date2.getMinutes();
</script>





<script>
                                   
                unction addInput(val) {
   var input = document.createElement('input');
   input.setAttribute('type', 'hidden');
   input.setAttribute('value', val);
   document.body.appendChild(input);
}
</script>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
$( document ).ready(function() {

    var now = new Date();

    var day = ("0" + now.getDate()).slice(-2);
    var month = ("0" + (now.getMonth() + 1)).slice(-2);

    var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
    $("#date2").val(today);
});
</script>
