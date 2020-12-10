<%-- 
    Document   : NavBar
    Created on : Nov 30, 2020, 10:27:22 PM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.dao.CategoryDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
List<Category> categories = CategoryDAO.getCategories();
request.setAttribute("Categories", categories);
%>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      
        <a class="navbar-brand" href="MainPageController">Geek zone</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                
                
               
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown"> Categorías </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">   
                        
                        
                 <%
                if(categories != null){
                for(Category category : categories){
                %>
                
                
                  <a class="dropdown-item" href="#"><%=category.getName()%></a>
                
                
                <%
                  }
                  }
                %>
                        
                        
                    </div>
                </div>

               
                
                <li class="nav-item">
                    <a class="nav-link" href="VerNoticia.jsp">Noticias <span class="sr-only">(current)</span></a>

                </li>

                <li class="nav-item">
                    <a class="nav-link" href="AddNewsController">Redactar noticia<span class="sr-only">(current)</span></a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="Editor.jsp">Editor <span class="sr-only">(current)</span></a>
                </li>
                
                  <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">Log In <span class="sr-only">(current)</span></a>
                </li>


            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
            </form>
        </div>
    </nav>