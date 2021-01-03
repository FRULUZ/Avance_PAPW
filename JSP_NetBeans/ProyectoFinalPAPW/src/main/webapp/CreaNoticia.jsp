<%-- 
    Document   : CreaNoticia
    Created on : Nov 20, 2020, 1:38:39 AM
    Author     : EDGAR
--%>



<%@page import="com.mycompany.proyectofinalpapw.dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.proyectofinalpapw.models.Category"%>

<%
List<Category> categories = CategoryDAO.getCategories();
request.setAttribute("Categories", categories);
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear una nueva noticia</title>

    <link rel="stylesheet" href="CSS/estilote.css">

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

     
</head>



<body>

    
    
    <jsp:include page="NavBar.jsp"/> 
    
        
    <p>
        <br>
    
    </p>
    
    
    
  <header class="text-white text-center">
    <h1 class="display-4">REDACTA UNA NOTICIA</h1>

</header>

<p>
    <br>

</p>




    <div class="container">
        
       
        
               <form  class="col-12" method="POST" enctype="multipart/form-data" action="AddNewsController" name="Form1" onsubmit="return emptyValidation()" required>
                
                
                   
                   
                   <div class="form-group">
                       <label for="date">Día de hoy</label>
                       <input type="date" id="date" name="date"/>
                   </div>
                 
                   
                <div class="form-group">
                    <label for="title">Título de la noticia</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>
                   
                   
                   
                   <div class="form-group">
                       <label for="corta">Descripción corta</label>
                       <input type="text" class="form-control" id="title" name="corta" required>
                   </div>
                   
                
                  <div class="form-group">
                 <label for="descripcion">Nota de la noticia</label>
                <textarea class="form-control" id="descripcion"  name="descripcion" rows="3" required></textarea>
                  </div>
       
  
                <div class="form-group">
                    <label for="category">Categorías</label>
                    <select class="form-control" name="category" id="category" required>
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
                    
                    
                    
                     <div class="form-group">
                        <div class="col-md-10 col-sm-9 col-xs-12">
                           <input type="hidden" class="form-control" type="text"   name="id" value=<%= session.getAttribute("id")%>>
                        </div>
                    </div>
                    </div>
                    
                    
                         <div class="form-group">
                        <div class="col-md-10 col-sm-9 col-xs-12">
                           <input type="text" class="form-control"  name="estado" value= 2 hidden>
                        </div>
                    </div>
                    </div>
                    

                <div class="botoncin">
                    <button class="btn btn-primary" type="submit">Subir noticia</button>
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
document.getElementById("date").innerHTML = dt.toLocaleTimeString();
</script>

<script>
var date = new Date();

document.getElementById("date").value = date.getFullYear() + "-" + (date.getMonth()<10?'0':'') + (date.getMonth() + 1) + "-" + (date.getDate()<10?'0':'') + date.getDate();
</script>
