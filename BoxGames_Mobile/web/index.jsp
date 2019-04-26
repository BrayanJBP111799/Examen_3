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
                <h2 class="ui-title c-blue text-center">¿Buscas diversión? <br>Tenemos la solución <i class="far fa-thumbs-up"></i></h2>
                <div class="slider"></div>

                <div>
                    <center>
                        <h2 class="c-red" style="font-size:25px!important"><i class="fas fa-dice-d20"></i> PASOS <i class="fas fa-dice-d20"></i></h2>
                        <div class="ui-bar ui-bar-a mt-3">
                            <h3>¿Qué debes hacer?</h3>
                        </div>	
                    </center>
                </div>
                
                <div class="bd-example">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                      <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                      </ol>
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="card" style="width: 100%;">
                                <img src="img/pasos/find.png" class="d-block img-pasos" alt="find">
                                <center><div class="card-body">
                                    <h2>Busca</h2>
                                    <h3>Tenemos juegos para todos los gustos y edades.</h3>
                                </div></center>
                            </div>                                                      
                        </div>
                        <div class="carousel-item">
                            <div class="card" style="width: 100%;">
                                <img src="img/pasos/cart.png" class="d-block img-pasos" alt="cart">
                                <center><div class="card-body">
                                    <h2>Compra</h2>
                                    <h3>Elige el juego que quieras, añadelo a tu carrito y realiza tu pago.</h3>
                                </div></center>
                            </div>     
                        </div>
                        <div class="carousel-item">
                            <div class="card" style="width: 100%;">
                                <img src="img/pasos/board-game.png" class="d-block img-pasos" alt="board">
                                <center><div class="card-body">
                                    <h2>Juega</h2>
                                    <h3>Diviertete y pasa el rato en compañía con tus seres queridos.</h3>
                                </div></center>
                            </div>    
                        </div>
                      </div>
                      <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                </div>
                
                <!--AQUI 
                <div class="ui-corner-all custom-corners">
                    <div class="ui-body ui-body-a">
                        <div class="pasos-general">
                            <div class="columna-pasos bgc-green">
                                <div class="img-pasos img-busca"></div>
                                <h2>Busca</h2>
                                <h3>Tenemos juegos para todos los gustos y edades.</h3>
                            </div>
                            <div class="columna-pasos bgc-green">
                                <div class="img-pasos img-compra"></div>
                                <h2>Compra</h2>
                                <h3>Elige el juego que quieras, añadelo a tu carrito y realiza tu pago.</h3>
                            </div>
                            <div class="columna-pasos bgc-green mt-3">
                                <div class="img-pasos img-juega"></div>
                                <h2>Juega</h2>
                                <h3>Diviertete y pasa el rato en compañía con tus seres queridos.</h3>
                            </div>
                        </div>
                    </div>-->


                    <center>
                        <h2 class="c-green" style="font-size:30px!important"><i class="fab fa-critical-role c-red"></i> Artículos Destacados <i class="fab fa-critical-role c-red"></i></h2>
                        <h3 class="c-red" style="padding: 5px 0;">Observa los juegos de mesa más buscados.</h3>
                    </center>
                    <div class="row-masjuegos">
                        <div class="masjuegos" id="juegos">
                            <h3>Busca y conoce más juegos.</h3>
                            <a href="viewrecords" rel="external" class="btn-blueBG" style="margin: 0 auto; color:#fff; text-decoration: none; padding: 6px 12px;">Juegos</a>
                        </div>
                    </div>
                    <br>
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
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script> 
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
