<%-- 
    Document   : Login
    Created on : Nov 20, 2020, 1:36:46 AM
    Author     : EDGAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="/CSS/loginstyle.css">
    <script src="/JAVASCRIPT/archivos.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">
    

</head>

<body>
      <!----Título--->

      <div class="container">

      <h1>GeekSquad</h1>
      <h2>Informate de lo nuevo del mundo geek!</h2>
        <!----FORM PARA INGRESAR A LA PAGINA--->
        <section class="form-login">
            <h5>Ingresar cuenta</h5>
            <input class="controls" type="text" name="Usuario" value="" placeholder="Usuario">
            <input class="controls" type="password" name="Contraseña" value="" placeholder="Contraseña">
            <input class="buttons" type="submit" name="" value="Ingresar">
            <p><a href="#">Crear una cuenta</a></p>
        </section>
  
        </div>

</body>

</html>