<%-- 
    Document   : Editor
    Created on : Nov 20, 2020, 1:42:07 AM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
        List<News> news = NewsDAO.getNews();
        request.setAttribute("News", news);
%>




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

    <link rel="stylesheet" type="text/CSS" href="CSS/estilito.css">
    
  </head>

  <body>
      
          <jsp:include page="NavBar.jsp"/>

    <p>
        <br>

    </p>
      

   <div class="container-md">
    <h1 class="titulito">Bienvenido editor</h1>
   <h5 class="titulito">¿Qué tal si revisamos unas cuantas notas?</h5>
   </div>
   

    <div class="container-md">
        
        
         <h5 class="titulito">Noticias sin revisión: </h5>

                <%
                    for (News element : news) {
                %>
       
                
                
                <div class="form-group">
                    <label for="ingresaApodo">Autor</label>
                    <input type="text" class="form-control" id="ingresaApodo" placeholder="Nombre de la persona que escribio la noticia">
                </div>
                
                 <div>
                    <label>Haga click en la imagen para ver el contenido completo de la nota: </label>
                </div>
                
                <div>

                    <a href="ShowNewsController?id=<%=element.getId()%>">
                    <img src= <%= element.getPathImage() %> alt="..." class="img-thumbnail">
                    </a>
                </div>
            
                <div class="form-group">
                    <label for="corta"> Descripción corta:  <%= element.getCorta()%></label>
                </div>
                  
            
            
              <div class="form-group">
                <label for="comment">Agregar una nota al escritor: </label>
                <textarea class="form-control" rows="5" id="comment" name="text" placeholder="Comentarios sobre la nota"></textarea>
            </div>
            
            <div class="btn-group">
                <a class="btn btn-mini btn-success" href="AprobarNewsController?id=<%=element.getId()%>">Aprobar</a>
                <a class="btn btn-mini btn-danger" href="#">Rechazar</a>
            </div>
            
                                  <%
                    }
                %>
        

      
    </div>
    

  </body>
</html>