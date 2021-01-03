<%-- 
    Document   : Editor
    Created on : Nov 20, 2020, 1:42:07 AM
    Author     : EDGAR
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String idNews = request.getParameter("id");
        List<News> news = NewsDAO.getNews();
        request.setAttribute("News", news);
%>




<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Editorial</title>
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
                
        
      
                   <br>
                
  
                
                 <div>
                    <label>Haga click en la imagen para ver el contenido completo de la nota: </label>
                </div>
                
                <div>

                    <a href="ShowNewsController?id=<%=element.getId()%>">
                    <img src= <%= element.getPathImage() %> alt="..." class="img-thumbnail">
                    </a>
                </div>
            
                    
                          
                    <%
                    if(element.getAprobada() == 2) {
                %>
                       <div class="form-group">
                    <label for="ingresaApodo">Estado de la noticia: Espera</label>
                </div>
                   <%
                        }
                %>
                   
                   
                   
                   <%
                    if(element.getAprobada() == 1) {
                %>
                <div class="form-group">
                    <label for="ingresaApodo">Estado de la noticia: Aprobada</label>
                </div>
                    <%
                        }
                %>
                   
                   
                   <%
                    if(element.getAprobada() == 0) {
                %>
                   <div class="form-group">
                    <label for="ingresaApodo">Estado de la noticia: Rechazada</label>
                </div>
                     <%
                        }
                %>
                    
                <div class="form-group">
                    <label for="corta"> Descripción corta:  <%= element.getCorta()%></label>
                </div>
                
                
                 <div class="form-group">
                    <label for="fecha"> Fecha de publicación:  <%= element.getDate() %></label>
                </div>
                  
                 <br>
        
                <label for="comment">Necesita primero aprobar o rechazar la noticia para poder comentar</label>
                
                 <br>
                 
          
                 
                 
                <form  class="col-12" method="POST" action="AddEditarNewsController">
 
                            <textarea class="form-control" placeholder="Escribe un comentario..." rows="3" value="" name="commentary" id="commentary" hidden></textarea>
                            <input type="text" name="idNew" value="<%= element.getId()%>" hidden>
                            <input type="text" name="idUser" value="<%= element.getUser()%>" hidden>
                            <input type="text" name="estado" value="1" hidden>
                
                     
                <input type="submit" class="fa fa-reply" value="Mandar aprobación">
                
             </form>    
                 
                 
                 
            
            <div class="btn-group">
                <a class="btn btn-mini btn-success" href="AprobarNewsController?id=<%=element.getId()%>">Aprobar</a>  
            </div>   
           
             <br>
              <br>
             
              
              
              
             <form  class="col-12" method="POST" action="AddEditarNewsController">
              
                <label for="comment">Agregar una nota de rechazo al escritor: </label>
                
                  
                            <textarea class="form-control" placeholder="Escribe un comentario..." rows="3"  name="commentary" id="commentary"></textarea>
                            <input type="text" name="idNew" value="<%= element.getId()%>" hidden>
                            <input type="text" name="idUser" value="<%= element.getUser()%>" hidden>
                            <input type="text" name="estado" value="0" hidden>
                
                     
                <input type="submit" class="fa fa-reply" value="Mandar comentario">
                
             </form>
              
             
             
             
             
              
                <div class="btn-group">
                     <a class="btn btn-mini btn-danger" href="RechazarNewsController?id=<%=element.getId()%>">Rechazar</a>
                </div>
            
                   <br>

                
                                  <%
                    }
                %>
        
   <br>
      
    </div>
    

  </body>
</html>



