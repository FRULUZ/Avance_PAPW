<%-- 
    Document   : SignInSuccess
    Created on : Nov 28, 2020, 6:18:34 PM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrado</title>
    </head>
    <body>
        <h1>Haz ingresado</h1>
        <h2>ID: <%=session.getAttribute("id")%> </h2>
        <h2>Username: <%=session.getAttribute("username")%> </h2>
        
        
        <form  action="LogOffController" method="POST" > 
        
        <input type ="submit" class="btn btn-primary" value="Cerrar Session">
        </form>
        
        
    </body>
</html>
