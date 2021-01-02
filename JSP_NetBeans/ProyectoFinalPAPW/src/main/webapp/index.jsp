<%-- 
    Document   : Principal
    Created on : Nov 20, 2020, 1:10:10 AM
    Author     : EDGAR
--%>


<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<%
    
        List<News> news = NewsDAO.getNews();
        request.setAttribute("News", news);
%>




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
    
    
    <jsp:include page="NavBar.jsp"/>

    <p>
        <br>

    </p>
    

    <div class="container">
  <!-- Content here -->

    <h1 class="text-center">Noticias destacadas</h1>
    
    
    
     <p>
        <br>
        <br>
    </p>
    
    
    <img src="Assets/images/image2.jpg" class="img-fluid" alt="Noticia">
    
    
       <p>
        <br>
        <br>
    </p>
    
    <div class="row">
        
        
        
        
                <%
                    for (News element : news) {
                %>
                
                
                
                 <%
                     
                    if(element.getAprobada()== 1){
                %>
                
                <div class="card mb-3 col-12 news-card" >
                    <a href="ShowNewsController?id=<%= element.getId() %>">
                        <div class="row no-gutters"
                            <div class="col-md-4">
                                <img width="30px" src= <%= element.getPathImage()%> class="card-img" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title"><%= element.getTitle()%></h5>
                                    <p class="card-text"><%= element.getCorta()%></p>
                                    <p class="card-text"><small class="text-muted"> Fecha de publicación: <%= element.getDate()%></small></p>
                                </div>
                            </div>
                        </div>
                    </a>
                  
                           
                                
                                    <%
                                        }
                                    %>    
                                
                   <%
                    }
                %>
        
        
        
    </div>
              
    </div>

<p>
    <br>

</p>

<footer>



    <div class="footer-limiter">


        <div class="footer-left">

            <p class="footer-links">Visita nuestras redes sociales</p>

            <p>Bitsonte studios © 2020</p>
            
        </div>

    </div>

</footer>




</html>