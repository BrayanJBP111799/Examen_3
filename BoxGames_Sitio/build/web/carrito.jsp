<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Box-Games</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">

        <link rel="icon" href="img/logos/dice.png">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" crossorigin="anonymous">
    </head>
    <body>
        <div class="header">
            <div class="logoimg"></div>
            <input type="checkbox" id="chk">
            <label for="chk" class="show-menu-btn">
                <i class="fas fa-ellipsis-v"></i>
            </label>

            <ul class="menu">
                <li>
                    <label for="chk" class="hide-menu-btn">
                        <i class="fas fa-times"></i>
                    </label>
                </li>                    
                <li><a href="login.jsp">Ingresar</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                <li><a href="contacto.jsp">Contáctenos</a></li>
                <li><a href="index.jsp#contenedor3">Juegos</a></li>
                <li><a href="index.jsp">Inicio</a></li>
            </ul>
        </div>
    </body>
</html>
