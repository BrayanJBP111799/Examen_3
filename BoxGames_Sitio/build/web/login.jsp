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

        <header>
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

        </header>

        <div class="login_container text-center">
            <form class="form-signin">
                <img class="mb-4" src="img/logos/logo2.png" width="300" alt="" >
                <h1 class="h3 mb-3 font-weight-normal">Iniciar Sesión</h1>
                <label for="inputEmail" class="sr-only">Correo Electrónico</label>
                <input type="email" id="email" class="form-control" placeholder="Correo Electrónico" required autofocus><br>
                <label for="inputPassword" class="sr-only">Contraseña</label>
                <input type="password" id="pass" class="form-control" placeholder="Contraseña" required><br>
                <div class="checkbox mb-3">
                    <label>
                        <a href="#">¿Olvidó su contraseña?</a>
                    </label><br>
                    <label>
                        <a href="pre-registro.jsp">Registrarse</a>
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            </form>
        </div>

        <footer>
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

    </body>
</html>