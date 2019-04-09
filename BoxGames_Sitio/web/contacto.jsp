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
                    <s:if test="%{#session.session_correo == null}">
                        <li><a href="login.jsp">Ingresar</a></li>
                    </s:if>
                    <s:elseif test="%{#session.session_correo != null}">
                        <li><a href="logout">Salir</a></li>
                    </s:elseif>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <li><a href="contacto.jsp">Contáctenos</a></li>
                    <li><a href="index.jsp#contenedor3">Juegos</a></li>
                    <li><a href="index.jsp">Inicio</a></li>
                </ul>
            </div>

        </header>
        <br>
        <div class="mx-auto" align="center">
            <h1 style="color:#328BC3; text-align: center">Contáctanos</h1>
        </div>


        <section class="contenedor-contacto" id="contenedor4">
            <center><h2 style="color:#FFF; text-align: center">Envíanos un mensaje</h2></center>
            <div class="borde"></div>
            <s:head/>
            <s:form cssClass="contact-form" action="contactar" method="post">
                <s:textfield name="ct.name" type="text" maxlength="45" style="font-family: 'Montserrat', sans-serif;" cssClass="contact-form-text" placeholder="Nombre"></s:textfield>
                <s:textfield name="ct.phone" type="number" maxlength="45" style="font-family: 'Montserrat', sans-serif;" cssClass="contact-form-text" placeholder="Teléfono"></s:textfield>
                <s:textfield name="ct.email" type="text" maxlength="45" style="font-family: 'Montserrat', sans-serif;" cssClass="contact-form-text" placeholder="Correo electónico"></s:textfield>
                <s:textarea name="ct.msj" type="text" maxlength="1000" style="font-family: 'Montserrat', sans-serif;" cssClass="contact-form-text" placeholder="Mensaje"></s:textarea>
                <s:submit cssClass="contact-form-btn" value="Enviar"></s:submit>
            </s:form>
        </section>
        <section class="contenedor-nosotros" id="contenedor5">
            <center><div class="logoimg_blk" style="margin: 0 auto; float: none;"></div></center>
            <div class="nosotros-general">
                <div class="columna-nosotros">
                    <i class="fas fa-map-marker-alt"></i><h5>Dirección</h5>
                    <p>500 Oeste y 75 Sur de la Embajada Americana, Pavas, San José.</p>
                </div>
                <div class="columna-nosotros">
                    <h2>Síguenos en:</h2>
                    <a href="#"><i class="fab fa-facebook rs"></i></a>
                    <a href="#"><i class="fab fa-twitter-square rs"></i></a>
                    <a href="#"><i class="fab fa-instagram rs"></i></a>
                </div>
                <div class="columna-nosotros">
                    <i class="fas fa-envelope"></i><h5>Correo</h5>
                    <p>info@boxgames.org</p>
                    <i class="fas fa-phone"></i><h5>Teléfono</h5>
                    <p>8547-2209</p>
                </div>
            </div>
        </section>

        <footer>
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
