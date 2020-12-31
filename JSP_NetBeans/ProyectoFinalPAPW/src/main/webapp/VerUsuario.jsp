<%-- 
    Document   : VerUsuario
    Created on : Nov 20, 2020, 1:45:57 AM
    Author     : EDGAR
--%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewsDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.News"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.NewLikesDAO"%>
<%@page import="com.mycompany.proyectofinalpapw.models.NewsLikes"%>
<%@page import="com.mycompany.proyectofinalpapw.dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>


<%
    
         
         List<NewsLikes> newslikes = NewLikesDAO.getNewsLike();
         request.setAttribute("Newslikes", newslikes);
        
%>

  
       

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Usuario</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">



        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


        <script src="/JAVASCRIPT/archivos.js"></script>

        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">

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

        <link rel="stylesheet" type="text/css" href="CSS/profile.css">

    </head>

    <body>

        <!----EN ESTA PARTE VA EL NAVBAR--->

        <jsp:include page="NavBar.jsp"/>

        <p>
            <br>

        </p>



        <!----FIN DEL NAVBAR--->


        <!--------->


        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">


            <div class="content-panel">
                <h3 class="fieldset-title">Perfil del usuario</h3>





                <fieldset class="fieldset">

                    <form  class="col-12" method="POST" enctype="multipart/form-data" action="ModificarUserController" name="Form1">
                        
                        
                        <img src=<%= session.getAttribute("image")%> class="img-thumbnail" alt="...">

                        <p>
                            <br>


                        </p>


                        <label class="col-md-2 col-sm-3 col-xs-12 control-label">Id de usuario: </label>
                        <input class="form-control" name="id" type="text" value=<%= session.getAttribute("id")%> readonly>


                        
                         <div class="form-group">
                            <label>sobre mi: </label>
                                <input class="form-control" name="about" value="<%= session.getAttribute("about")%>" type="text">
                           
                        </div>

                  

                        <div class="form-group">
                            <label class="col-md-2 col-sm-3 col-xs-12 control-label">Nombre de usuario</label>
                            <div class="col-md-10 col-sm-9 col-xs-12">
                                <input class="form-control" name="username" type="text" value=<%= session.getAttribute("username")%>>
                            </div>
                        </div>

                            
                            
                        <div class="form-group">
                        <label for="image">Cambiar imagen de perfil: </label>
                        <input type="file" class="form-control" name="image" id="image">
                        <small id="emailHelp" class="form-text text-muted">Tamaño maximo de archivo 5 Mb.</small>
                        </div>
                    

                        <div class="form-group">
                            <label for="ingresa una contraseña">Password: </label>
                            <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Debe contener al menos un número, una mayúscula, una minuscula y al menos 8 caracteres o más." class="form-control" id="ingresaContraseña" placeholder="Que no se te olvide (～￣▽￣)～"  value=<%= session.getAttribute("password")%> required>
                        </div>



                        <div class="form-group">

                            <div>
                                <label for="emailAddress">Correo</label><br>
                                <input id="emailAddress" type="email" size="64" maxLength="64" required
                                       placeholder="De preferencia en uso (●'◡'●)" name="correo"  value=<%= session.getAttribute("correo")%>>
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="ingresa una Red Social">Red social</label>
                            <input type="text"   name="red" class="form-control" id="ingresaCorreo"  value=<%= session.getAttribute("red")%> placeholder="Ingresa nombre de la cuenta" required>
                        </div>


                        <%
                            if ((int) session.getAttribute("tipo") == 1) {
                        %>


                        <div class="form-group">
                            <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tipo de usuario</label>
                            <div class="col-md-10 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" value= "Usuario registrado" readonly>
                            </div>
                        </div>

                        <%
                            }
                        %>



                        <%
                            if ((int) session.getAttribute("tipo") == 2) {
                        %>


                        <div class="form-group">
                            <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tipo de usuario</label>
                            <div class="col-md-10 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" value= "Editor" readonly>
                            </div>
                        </div>

                        <%
                            }
                        %>



                        <%
                            if ((int) session.getAttribute("tipo") == 3) {
                        %>


                        <div class="form-group">
                            <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tipo de usuario</label>
                            <div class="col-md-10 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" value= "Creador de contenido" readonly>
                            </div>
                        </div>

                        <%
                            }
                        %>  




                        <%
                            if ((int) session.getAttribute("tipo") == 4) {
                        %>


                        <div class="form-group">
                            <label class="col-md-2 col-sm-3 col-xs-12 control-label">Tipo de usuario</label>
                            <div class="col-md-10 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" value= "Administrador" readonly>
                            </div>
                        </div>

                        <%
                            }
                        %>  

                        
                        
                         <p>
                            <br>

                        </p>


                        
                        
                            <div>
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Noticias que me gustan
                            </button>

                            <class class="dropdown-menu">
                                
                                <%
                                    for (NewsLikes megustan : newslikes) {
                                %>
                                
       
                                <%
                                    if (megustan.getUser() == (int) session.getAttribute("id")) {
                                %>
                                
                                
                                
                                
                                <a class="dropdown-item"href="ShowNewsController?id=<%=megustan.getNews().getId()%>"><%=megustan.getTitle()%></a>
                            
                                
                                
                                <%
                   }
                                %>
                                
                                  <%
                   }
                                %>
                                
                            </class>

                        </div> 

                        
                        
                        <p>
                            <br>

                        </p>

                        
                        <input class="btn btn-primary" type="submit" value="Modificar datos">
                        
                        
                        <a class="btn btn-primary" href="Logoff.jsp" role="button">Salir</a>

                        
                        

                    </form>
                        
                     
                        <a class="btn btn-mini btn-success" href="DeleteUserController?id=<%= session.getAttribute("id")%>">Eliminar cuenta</a>
                        
                     
                </fieldset>
            </div>


        </div>

    </body>

</html>




