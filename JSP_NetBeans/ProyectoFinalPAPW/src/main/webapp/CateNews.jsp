<%-- 
    Document   : CateNews
    Created on : Dec 28, 2020, 8:19:29 PM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.dao.CategoryDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
        List<News> news = NewsDAO.getNews();
        request.setAttribute("News", news);
%>

<%
    List<Category> categories = CategoryDAO.getCategories();
    request.setAttribute("Categories", categories);
  
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Noticias por categoría</title>
        
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


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

    <link rel="stylesheet" type="text/css" href="CSS/categostyle.css">
     
        
    </head>
    
    
    <body>
        
        
           <jsp:include page="NavBar.jsp"/>

    <p>
        <br>

    </p>
    
        
    <div class="container-md">
        <h1 class="titulito">Buscar por categorías: </h1>
    </div>

    
     <div class="container-md">
 
         
         
             <!-- Example single danger button -->
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categorías</button>
        <div class="dropdown-menu">
            
            
            
                <%
                if(categories != null){
                for(Category category : categories){
                %>
                
                
                <a class="dropdown-item" href="ResLikeController?id=<%=category.getId()%>"><%=category.getName()%></a>
                
                
                <%
                  }
                  }
                %>
           

        </div>
    </div>
    
    
         
         
         
                <%
                    for (News element : news) {
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
                    <label for="fecha"> Fecha de publicación:  <%= element.getDate() %></label>
                </div>
                  
   
                <%
                    }
                %>
        

      
    </div>
    
    
    
        
        
    </body>
    
    
    
</html>
