<%-- 
    Document   : SignInFail
    Created on : Nov 28, 2020, 6:19:02 PM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Fail</title>

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
        
        
    <link rel="stylesheet" type="text/css" href="CSS/estilotote.css">
    

    </head>
    <body>
         <jsp:include page="NavBar.jsp"/>

        <div  align="center">

            <p>
                <br>
            </p>
            <h1>Lo sentimos</h1>
            <h2>Parece que hubo un problema</h2>

            <p>
                <br>
            </p>

            
            <image src="https://img.icons8.com/officexs/452/error.png"/>
            
               <p>
                <br>
            </p>
            
            
            <p class="h1"> Seleccione una opción:</p>
            
              <p>
                <br>
            </p>
            
            <div class="btn-group">

                <a href="Login.jsp" class="btn btn-primary">Intentar de nuevo</a>
                <a href="MainPageController" class="btn btn-primary">Ir a HOME</a>
            </div>
            
               <p>
                <br>
            </p>
            
        </div>

    </body>
</html>


