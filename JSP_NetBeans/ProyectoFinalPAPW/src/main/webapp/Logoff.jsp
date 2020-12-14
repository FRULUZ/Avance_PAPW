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
    </head>
    
    <body>
        <h1>Desea cerrar su sessión?</h1>
        
        <form  action="LogOffController" method="POST" > 
        <input type ="submit" class="btn btn-primary" value="Cerrar Session">
        </form>
        
         <a href="MainPageController" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Volver a HOME</a>
        
    </body>
    
</html>

