<%-- 
    Document   : Borradores
    Created on : Dec 23, 2020, 5:33:49 PM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.models.EditarNews"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.EditarNewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
        List<News> news = NewsDAO.getNews();
        request.setAttribute("News", news);
%>

<%
    
       List<EditarNews> ediciones = EditarNewsDAO.getEdiciones();
       request.setAttribute("Ediciones", ediciones);
%>



<!DOCTYPE html>


<html>
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventana borrador</title>
    </head>
    
    
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
    
         <link rel="stylesheet" href="CSS/borrador_style.css">
    
    <body>
        
        
         
        <jsp:include page="NavBar.jsp"/> 


        <p>
            <br>

        </p>



        <header class="text-white text-center">
            <h1 class="display-4">NOTICIAS REDACTADAS POR EL USUARIO: </h1>
        </header>
        
        
         <p>
            <br>

        </p>
        
        
        
                <%
                    for (News element : news) {
                %>
       
                
               <%
                    if (element.getUser() == (int)session.getAttribute("id")) {
                %>
              
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
                        <label for="fecha"> Fecha de publicación:  <%= element.getDate()%></label>
                    </div>
            
                    
                <div class="form-group">
                   <a class="btn btn-mini btn-danger" href="DeleteNewController?id=<%=element.getId()%>">Eliminar noticia</a>
                </div>
                    
                   
                
                 <div>
                    <a href="ShowNewsModifyController?id=<%=element.getId()%>" class="btn btn-info" role="button">Modificar noticia</a>
                </div>
                   
                <%
                    }
                %>     
            
                    
                <%
                    }
                %>
        

        <p>
            <br>

        </p>

        
        
           <div>

                    <a>
                        <img src="Assets/images/image1.jpg" class="rounded mx-auto d-block" alt="..." >
                    </a>
               
               
                </div>
         
          <p>
            <br>

        </p>
         
        <header class="text-white text-center">
            <h1 class="display-4">NOTICIAS PENDIENTES DE APROBAR</h1>
        </header>
        
         <p>
            <br>

        </p>
        
        
        
        
                <%
                    for (News element : news) {
                %>
       
                
                 <%
                    if (element.getUser() == (int)session.getAttribute("id")) {
                %>
                
                  <%
                    if(element.getAprobada() == 2) {
                %>
                
                
                <div class="form-group">
                    <label for="estadonoticia">Estado: </label>
                    <input type="text" class="form-control" id="ingresaApodo" placeholder="Noticia en espera">
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
                        <label for="fecha"> Fecha de publicación:  <%= element.getDate()%></label>
                    </div>
            
                    
                <div class="form-group">
                   <a class="btn btn-mini btn-danger" href="DeleteNewController?id=<%=element.getId()%>">Eliminar noticia</a>
                </div>
                    
                    
                <div>
                    <a href="ShowNewsModifyController?id=<%=element.getId()%>" class="btn btn-info" role="button">Modificar noticia</a>
                </div>
                   
                   
                 
                 <%
                    }
                %> 
                
                
                 <%
                    }
                %> 
                
               
                    
                <%
                    }
                %>
        
                
                <p>
                    <br>

                </p>

        
        <header class="text-white text-center">
            <h1 class="display-4">NOTICIAS APROBADAS</h1>
        </header>
                
                
                
                 <%
                    for (EditarNews edits : ediciones) {
                %>
       
                <%
                    if (edits.getUuario().getId() == (int)session.getAttribute("id") && edits.getEstado() == 1) {
                %>
              
    
                <div>
                    <a href="ShowNewsController?id=<%=edits.getNoticia().getId()%>" class="btn btn-info" role="button">Ver noticia</a>
                </div>
                    
                    
                <div class="form-group">
                   <a class="btn btn-mini btn-danger" href="DeleteNewController?id=<%=edits.getNoticia().getId()%>">Eliminar noticia</a>
                </div>
                   
                
                
                  <%
                    }
                %>
                
                <%
                    }
                %>
        
         <p>
            <br>

        </p>
        
        
        <header class="text-white text-center">
            <h1 class="display-4">NOTICIAS RECHAZADAS</h1>
        </header>
        
                <%
                    for (EditarNews edits : ediciones) {
                %>
       
                <%
                    if (edits.getUuario().getId() == (int)session.getAttribute("id") && edits.getEstado() == 0) {
                %>
              
               
          
                <div>
                    <a href="ShowNewsController?id=<%=edits.getNoticia().getId()%>" class="btn btn-info" role="button">Ver noticia</a>
                </div>
                    
        
                
               <div class="form-group">
                <label for="exampleFormControlTextarea3">Comentario del editor:</label>
                <textarea class="form-control" id="exampleFormControlTextarea3" rows="7"><%= edits.getTexto()%></textarea>
                </div>
                    
                <div class="form-group">
                   <a class="btn btn-mini btn-danger" href="DeleteNewController?id=<%=edits.getNoticia().getId()%>">Eliminar noticia</a>
                </div>
                    
                    
                <div>
                    <a href="ShowNewsModifyController?id=<%=edits.getId()%>" class="btn btn-info" role="button">Modificar noticia</a>
                </div>
                   
                
                
                  <%
                    }
                %>
                
                <%
                    }
                %>
       
         <p>
            <br>

        </p>
     
    </body>
    
    
    
</html>
