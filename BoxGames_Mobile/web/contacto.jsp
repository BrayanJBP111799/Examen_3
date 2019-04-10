<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Box-Games</title>
        <link rel="stylesheet" href="css/theme/customAB.css" />
        <link rel="stylesheet" href="css/theme/jquery.mobile.icons.min.css" />
        <link rel="stylesheet" href="jqmobile/demos/css/themes/default/jquery.mobile.structure-1.4.5.min.css">
        <link rel="stylesheet" href="jqmobile/demos/_assets/css/jqm-demos.css">
        <link rel="icon" href="img/logos/dice.png">
        <link rel="stylesheet" href="css/estilo.css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" crossorigin="anonymous">

        <script src="jqmobile/demos/js/jquery.js"></script>
        <script src="jqmobile/demos/_assets/js/index.js"></script>
        <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="Box-Games">

            <!------------------------------------------------- HEADER ------------------------------------------------------>
            <div data-role="header" data-theme="b">
                <img src="img/logos/logo2_blanco_peq.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
                <s:if test="%{#session.session_correo != null}">
                    <a href="logout" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div>

            <!------------------------------------------------- BODY ------------------------------------------------------>
            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title c-blue" role="heading" style="font-weight: 700;">Contáctenos</h2>

                <div class="ui-corner-all custom-corners">
                    <div class="ui-bar ui-bar-a text-center">
                        <h3>Envíanos tu mensaje.</h3>
                    </div>
                    <div class="ui-body ui-body-a">
                        <form>
                            <div class="mt-3">
                                <label for="nombre">Nombre Completo</label>
                                <input type="text" name="nombre" class="form-control" required>
                            </div>
                            <div class="mt-3">
                                <label for="telefono">Teléfono</label>
                                <input type="text" name="telefono" class="form-control" required>
                            </div>
                            <div class="mt-3">
                                <label for="correo">Correo electrónico</label>
                                <input type="text" name="correo" class="form-control" placeholder="boxgames@correo.com">
                            </div>
                            <div class="mt-3">
                                <label for="correo">Mensaje</label>
                                <textarea class="contact-form-text"></textarea>
                            </div>

                            <a class="float-right bgc-blue ui-btn ui-btn-inline btn-formato" value="Enviar" type="submit" href="#">Enviar</a>
                        </form>
                    </div>

                    <center><div class="logoimg_blk" style="margin: 0 auto; float: none;"></div></center>
                    <div class="nosotros-general">
                        <div class="columna-nosotros">
                            <i class="fas fa-map-marker-alt"></i><h4>Dirección</h4>
                            <p>500 Oeste y 75 Sur de la Embajada Americana, Pavas, San José.</p>
                        </div>
                        <div class="columna-nosotros">
                            <h1>Síguenos en:</h1>
                            <a href="#"><i class="fab fa-facebook rs"></i></a>
                            <a href="#"><i class="fab fa-twitter-square rs"></i></a>
                            <a href="#"><i class="fab fa-instagram rs"></i></a>
                        </div>
                        <div class="columna-nosotros">
                            <i class="fas fa-envelope"></i><h4>Correo</h4>
                            <p>info@boxgames.org</p>
                            <i class="fas fa-phone"></i><h4>Teléfono</h4>
                            <p>8547-2209</p>
                        </div>
                    </div>
                </div>
            </div>

            <!------------------------------------------------- MENU ------------------------------------------------------>
            <div data-role="panel" data-display="push" data-theme="a" id="nav-panel">
                <ul data-role="listview">
                    <li data-icon="delete">
                        <a href="#" data-rel="close">Cerrar Menú</a>
                    </li>
                    <li>
                        <a rel="external" href="index.jsp">Inicio</a>
                    </li>
                    <li>
                        <a rel="external" href="juegos.jsp">Juegos</a>
                    </li>
                    <li>
                        <a href="contacto.jsp" rel="external">Contáctenos</a>
                    </li>
                    <li>
                        <a href="nosotros.jsp" rel="external">Nosotros</a>
                    </li>
                    <s:if test="%{#session.session_correo == null}">
                        <div class="ui-panel-inner"></div>
                        <li>
                            <a href="login.jsp" rel="external">Ingresar</a>
                        </li>
                    </s:if>
                </ul>
            </div>

            <!------------------------------------------------- FOOTER ------------------------------------------------------>
            <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
                <center>
                    <img src="img/logos/logo2_negro_peq.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>
        </div>
    </body>
</html>
