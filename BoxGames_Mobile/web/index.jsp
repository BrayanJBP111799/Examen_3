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

                <div class="obj-general">
                    <div class="columna-obj obj-text">
                        <p>Nuestro negocio se especializa en la obtención, búsqueda y entrega de juegos de mesa. Todos aquellos interesados en tener alguna experiencia tradicional de entrenimiento en familia o amigos, han llegado al lugar correcto.</p>
                    </div>
                    <div class="columna-obj mx-auto mg-obj2"></div>
                    <div class="columna-obj mx-auto img-obj1"></div>
                    <div class="columna-obj obj-text">
                        <p>Queremos mantener tu felicidad creando nuevas amistades, pasando el tiempo con tus seres más queridos. Anímate y busca algo que te guste de los distintos juegos de mesa, luego continua con la diversión.</p>
                    </div>
                </div>

                <div>
                    <center>
                        <h2 class="c-red" style="font-size:25px!important"><i class="fas fa-dice-d20"></i> PASOS <i class="fas fa-dice-d20"></i></h2>
                        <div class="ui-bar ui-bar-a mt-3">
                            <h3>¿Qué debes hacer?</h3>
                        </div>	
                    </center>
                </div>
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
                    </div>


                    <center>
                        <h2 class="c-green" style="font-size:30px!important"><i class="fab fa-critical-role c-red"></i> Artículos Destacados <i class="fab fa-critical-role c-red"></i></h2>
                        <h3 class="c-red" style="padding: 5px 0;">Observa los juegos de mesa más buscados.</h3>
                    </center>
                    <div class="row-masjuegos">
                        <div class="masjuegos">
                            <h3>Busca y conoce más juegos.</h3>
                            <a href="viewrecords" rel="external" class="btn-formato"><span class="c-gray">Juegos</span></a>
                        </div>
                    </div>
                    <br>
                    <div class="juegos-general">
                        <div class="columna-juegos">
                            <div class="table-juegos">
                                <h2>Monopoly</h2>
                                <div class="border-juegos"></div>
                                <div class="img-juego-des imgmonopoly"></div>
                                <p class="mt-3">"Para disfrutar en familia."</p>
                                <a href="#" class="btn-formato text-dark">Comprar</a>
                            </div>
                        </div>
                        <div class="columna-juegos">
                            <div class="table-juegos">
                                <h2>Ajedrez</h2>
                                <div class="border-juegos"></div>
                                <div class="img-juego-des imgajedrez"></div>
                                <p class="mt-3">"Para pasar el rato."</p>
                                <a href="#" class="btn-formato text-dark">Comprar</a>
                            </div>
                        </div>
                        <div class="columna-juegos">
                            <div class="table-juegos">
                                <h2>Jenga</h2>
                                <div class="border-juegos"></div>
                                <div class="img-juego-des imgjenga"></div>
                                <p class="mt-3">"Para ganar nuevas experiencias."</p>
                                <a href="#" class="btn-formato text-dark">Comprar</a>
                            </div>
                        </div>
                        <div class="columna-juegos mt-3">
                            <div class="table-juegos">
                                <h2>Clue</h2>
                                <div class="border-juegos"></div>
                                <div class="img-juego-des imgclue"></div>
                                <p class="mt-3">"Para pasar largas horas de diversión."</p>
                                <a href="#" class="btn-formato text-dark">Comprar</a>
                            </div>
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
