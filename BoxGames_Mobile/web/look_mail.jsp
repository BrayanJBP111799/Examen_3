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

        <link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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
            </div>

            <!------------------------------------------------- BODY ------------------------------------------------------>
            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <div class="sign-in-body">
                    <center><form class="form-redirect" style="border:solid 3px #328BC3; border-radius:10px;">
                            <div><img src="img/logos/logo2_negro_peq.png"></div>
                            <h3 class="mb-3 font-weight-normal text-green">¡Se ha enviado un correo electrónico a tu cuenta!</h3>
                            <div class="col-md-5">
                                <center><img src="https://image.flaticon.com/icons/svg/204/204322.svg" width="128" height="128" alt="mail"></center>
                                <br><br>   
                                <h5 class="font-weight-normal">En caso de no recibir el correo, verifica que esté escrito correctamente e intenta de nuevo.</h5>
                                <div class="checkbox mb-3">
                                    <center>
                                        <a class="btn btn-blueBG" style="margin: 20px auto; color:#fff;" onclick="location.href = 'pre_registro.jsp'">Regresar</a>    
                                        <a href="index.jsp" class="btn btn-blueBG" style="margin: 20px auto; color:#fff; text-decoration: none;">Volver al inicio</a>
                                    </center>
                                </div>  
                            </div>
                        </form></center>
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
                        <a rel="external" href="index.jsp#juegos">Juegos</a>
                    </li>
                    <li>
                        <a href="contacto.jsp" rel="external">Contáctenos</a>
                    </li>
                    <li>
                        <a href="nosotros.jsp" rel="external">Nosotros</a>
                    </li>
                    <div class="ui-panel-inner"></div>
                    <li>
                        <a href="login.jsp" rel="external">Ingresar</a>
                    </li>
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
