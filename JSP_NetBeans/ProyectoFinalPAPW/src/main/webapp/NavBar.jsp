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
                

                
                  <%
                      
                 if(session.getAttribute("username") !=null){

                %>
                
                    <%
                    if ((int) session.getAttribute("tipo") == 5) {
                %>

                 
                <nav class="navbar navbar-light">
                  
                      <form action="LogOffController" method="POST">
  <button type="submit" formmethod="post">SALIR DE LA PAGINA</button>
</form>
                </nav>

                
              
                
                <%
                        }else{
                     
                %>
                
                
                
                  
                           <%
                               if ((int)session.getAttribute("tipo") == 2) {
                           %>

                           
                           
                           <li class="nav-item">
                               <a class="nav-link" href="AddNewsController">Redactar noticia<span class="sr-only">(current)</span></a>
                           </li>


                           <li class="nav-item">
                               <a class="nav-link" href="Borradores.jsp">Borradores<span class="sr-only">(current)</span></a>
                           </li>

                           <li class="nav-item">
                               <a class="nav-link" href="Editor.jsp">Editar noticias <span class="sr-only">(current)</span></a>
                           </li>

                <%
                        }
                     
                %>
                
                
                
                
                      <%
                               if ((int)session.getAttribute("tipo") == 3) {
                           %>


                <li class="nav-item">
                    <a class="nav-link" href="AddNewsController">Redactar noticia<span class="sr-only">(current)</span></a>
                </li>
                
                
                 <li class="nav-item">
                    <a class="nav-link" href="Borradores.jsp">Borradores<span class="sr-only">(current)</span></a>
                </li>
                
                
              
                <%
                        }
                     
                %>
                
                
                
                    <%
                               if ((int)session.getAttribute("tipo") == 4) {
                           %>


                <li class="nav-item">
                    <a class="nav-link" href="AddNewsController">Redactar noticia<span class="sr-only">(current)</span></a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Borradores.jsp">Borradores<span class="sr-only">(current)</span></a>
                </li>
                
                   <li class="nav-item">
                    <a class="nav-link" href="Editor.jsp">Editar noticias <span class="sr-only">(current)</span></a>
                </li>
               
              
                <%
                        }
                     
                %>
            
                
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"> Benvenid@: <%= session.getAttribute("username")%></a>
                </li>
        
            
                <nav class="navbar navbar-light bg-light">
                    <a class="navbar-brand">
                        <img src= <%= session.getAttribute("image")%> width="30" height="30" alt="">
                    </a>
                </nav>
                    
                    
                <li class="nav-item">
                    <a class="nav-link" href="VerUsuario.jsp">Ver perfil<span class="sr-only">(current)</span></a>
                </li>
                
                
            

                    
                 <%
                  }
                  
                %>    
                
                       <%
                        }else{
                     
                %>
                
                 <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">Log In <span class="sr-only">(current)</span></a>
                </li>
                
            
                   <%
                       }
                  
                %>   
                
                
             
                
            </ul>
         
        </div>
    </nav>