<%-- 
    Document   : Logoff
    Created on : Dec 10, 2020, 9:35:25 PM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logoff</title>
        
        
        
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

    <link rel="stylesheet" type="text/css" href="CSS/logoff_style.css">
    

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
        
    </head>
    
    <body>
            
         <div class="container">

        <div align="center">

            <p>
                <br>
            </p>

            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/OOjs_UI_icon_logOut-ltr.svg/1024px-OOjs_UI_icon_logOut-ltr.svg.png" class="rounded" style="width:25%" alt="Cinque Terre">


            <p>
                <br>
            </p>

            <h1>¿Desea cerrar sessión?</h1>

            <p>
                <br>
            </p>

            <form action="LogOffController" method="POST">

                <input type="submit"class="btn btn-primary" value="Cerrar Session">

            </form>

            <p>
                <br>
            </p>

            <a href="MainPageController" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Volver a HOME</a>


        </div>

</div>

         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
    </body>
    
    
    
    
</html>

