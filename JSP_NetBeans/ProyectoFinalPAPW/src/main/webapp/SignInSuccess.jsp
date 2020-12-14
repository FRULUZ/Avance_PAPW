<%-- 
    Document   : SignInSuccess
    Created on : Nov 28, 2020, 6:18:34 PM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrado</title>

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
            
                  
    <link rel="stylesheet" type="text/css" href="CSS/estilin.css">

    </head>
    
    
<body>
    
    
      <jsp:include page="NavBar.jsp"/>
    
    <div class="container">

    <div align="center">

            <image src="https://img.icons8.com/clouds/2x/medal.png"/>
            <h1>Haz ingresado</h1>

            <p>
                <br>
            </p>

            <h3>ID: <%=session.getAttribute("id")%> </h2>
            <h3>Username: <%=session.getAttribute("username")%> </h2>

            <p>
                <br>
            </p>

            <form  action="LogOffController" method="POST" > 
            <input type ="submit" class="btn btn-danger" value="Cerrar Session">
            </form>

        </div>
        
        
    </div> 


</body>
</html>