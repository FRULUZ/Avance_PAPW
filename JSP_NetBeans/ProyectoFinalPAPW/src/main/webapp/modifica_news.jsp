<%-- 
    Document   : modifica_news
    Created on : Dec 29, 2020, 12:13:15 AM
    Author     : EDGAR
--%>

<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.CategoryDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Category"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        String idNews = request.getParameter("id");
         
        News element = NewsDAO.getNew(Integer.parseInt(idNews, 10));
        request.setAttribute("New", element);
 
       List<Category> categories = CategoryDAO.getCategories();
       request.setAttribute("Categories", categories);

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar noticias</title>
        
        
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
    
         <link rel="stylesheet" href="CSS/modifica_news_style.css">
        
    </head>
    
    
    <body>
        
        <jsp:include page="NavBar.jsp"/> 


        <p>
            <br>

        </p>
        
            
        <header class="text-white text-center">
            <h1 class="display-4">MODIFICA ESTA NOTICIA</h1>
        </header>
        
        
        <p>
            <br>

        </p>
        
        
        
        <div class="container">

            
            <div class="container-md">
                <br><br>

                <h1>Título: <%= element.getTitle()%></h1>

            </div>
                
          <div class="container-md">
                <br><br>

                <h1>Publicada el día: <%=element.getDate()%></h1>

            </div>


            <div class="container-md">
                <br><br>

                <h1>Descripción corta: <%= element.getCorta()%></h1>

            </div>
                
                
                
                <div class="container-md">
                    <br><br>

                    <h1>Descripción: <%= element.getDescription()%></h1>

                </div>
                    
                    
               <div class="container-md">
                    <br><br>

                    <h1>Categoría: <%= element.getCategory().getName()%></h1>

                </div>
                



        </div> 


        <p>
            <br>

        </p>
        
        
        <div class="container">

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

            <div class="embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" src=<%= element.getVideo()%> allowfullscreen></iframe>
            </div>
        </div> 


        <p>
            <br>

        </p>
        
        
        
         <div class="container">
        
       
        
               <form  class="col-12" method="POST" enctype="multipart/form-data" action="ModificarMediaNewsController" name="Form1" onsubmit="return emptyValidation()" required>
        
        
                   
                     <input type="text" name="id" value="<%= element.getId()%>" hidden>
                
                   
                     <div class="form-group">
                        <label for="image">Imagen</label>
                        <input type="file" class="form-control" name="image" id="image" required>
                        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                    </div>
                    
        
                      <div class="form-group">
                        <label for="image">Imagen 2</label>
                        <input type="file" class="form-control" name="image2" id="image" required>
                        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                    </div>
                    
                    
                       <div class="form-group">
                        <label for="image">Imagen 3</label>
                        <input type="file" class="form-control" name="image3" id="image" required>
                        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                    </div>
                    
                    
                     <div class="form-group">
                        <label for="image">Video</label>
                        <input type="file" class="form-control" name="video" id="image" required>
                        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                    </div>
                    
                      <div class="botoncin">
                    <button class="btn btn-primary" type="submit">Modificar media</button>
                </div>    
                  
               </form> 
            </div> 
        
        
           <p>
            <br>

        </p>
        
        
        <div class="container">
        
       
        
               <form  class="col-12" method="POST" action="ModificarDataNewsController" required>
                
                   
                       <input type="text" name="id" value="<%= element.getId()%>" hidden>
                
              

                       <div class="form-group">
                           <input type="text" id="date2" name="date2" hidden/>
                       </div>
                   
                  
                 
                   
                  <div class="form-group">
                    <label for="title">Título de la noticia: </label>
                    <input type="text" name="title" value="<%= element.getTitle()%>" required>
                   </div>
                   
                   
                   
                   <div class="form-group">
                       <label for="corta">Descripción corta: </label>
                       <input type="text"  name="corta" value="<%= element.getCorta()%>" required>
                   </div>
                   
                
                  <div class="form-group">
                 <label for="descripcion">Nota de la noticia</label>
                <textarea class="form-control" id="descripcion"  name="descripcion" rows="3" required><%= element.getDescription()%></textarea>
                  </div>
       
  
                <div class="form-group">
                    <label for="category">Categorías</label>
                    <select name="category"  required>
                        <option value="-1">Seleccione una categoría</option>
                        <%
                            for (Category category : categories) {
                        %>
                        <option value="<%= category.getId()%>"><%= category.getName()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
            

                <div class="botoncin">
                    <button class="btn btn-primary" type="submit">Modificar datos</button>
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
var date = new Date();

document.getElementById("date").value = date.getFullYear() + "-" + (date.getMonth()<10?'0':'') + (date.getMonth() + 1) + "-" + (date.getDate()<10?'0':'') + date.getDate();

document.getElementById("hour").value = (date.getHours()<10?'0':'') + date.getHours()  + ":" + (date.getMinutes()<10?'0':'')  + date.getMinutes();
</script>





<script>
var date2 = new Date();
document.getElementById("date2").value = date2.getFullYear() + "-" + (date2.getMonth()<10?'0':'') + (date2.getMonth() + 1) + "-" + (date2.getDate()<10?'0':'') + date2.getDate();
document.getElementById("hour2").value = (date2.getHours()<10?'0':'') + date2.getHours()  + ":" + (date2.getMinutes()<10?'0':'')  + date2.getMinutes();
</script>


