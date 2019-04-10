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
                <s:if test="%{#session.session_correo != null}">
                    <a href="logout" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div>

            <!------------------------------------------------- BODY ------------------------------------------------------>
            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">

                <div class="topjuegos">
                    <div class="space15"></div>
                    <div class="fondotopjuegos">
                        <h2 class="text-white" style="font-weight: 700">Juegos disponibles</h2>
                    </div>
                </div>

                <center>
                    <h2 class="c-red"><i class="fas fa-dice-d20"></i> Juegos <i class="fas fa-dice-d20"></i></h2>
                    <p class="c-green" style="padding: 20px 0; margin-bottom: 0;">Busca y elige algún juego que te guste.</p>
                </center>

                <div class="ui-input-search ui-body-inherit ui-corner-all ui-shadow-inset ui-input-has-clear"><input type="text" data-type="search" name="password" id="myInput" class="txtfiltro" onkeyup="myFunction()" placeholder="Introduce el nombre del juego"><a href="#" tabindex="-1" aria-hidden="true" class="ui-input-clear ui-btn ui-icon-delete ui-btn-icon-notext ui-corner-all ui-input-clear-hidden" title="Clear text">Clear text</a></div>
                <br>
                <p class="c-green" style="margin-bottom: 0;">O selecciona alguna de las siguientes categorías.</p>
                <div id="myBtnContainer" class="botonesfiltro ui-controlgroup ui-controlgroup-horizontal ui-corner-all ui-mini" data-role="controlgroup" data-type="horizontal" data-mini="true"><div class="ui-controlgroup-controls ">
                        <button class="active ui-btn ui-first-child" onclick="filterSelection('all')">Todos</button>
                        <button class="ui-btn" onclick="filterSelection('cartas')"> Cartas</button>
                        <button class="ui-btn" onclick="filterSelection('rol')">Rol</button>
                        <button class="ui-btn" onclick="filterSelection('dosj')">2 jugadores</button>
                        <button class="ui-btn" onclick="filterSelection('cuatroj')">4 o más jugadores</button>
                        <button class="ui-btn ui-last-child" onclick="filterSelection('estrategia')">Estrategía</button>
                    </div></div>

                <hr>
                <div id="myUL">
                    <div class="juegos-general">
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv dados cuatroj show">
                                <h4>Colones de Catán</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgcolones"></div>
                                <button id="modalBtncolon" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj show">
                                <h4>Escaleras y serpientes</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imges"></div>
                                <button id="modalBtnes" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv estrategia rol cuatroj show">
                                <h4>Risk</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgrisk"></div>
                                <button id="modalBtnrisk" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj show">
                                <h4>Scrabble</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgscrabble"></div>
                                <button id="modalBtnscrabble" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>

                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv estrategia dosj show">
                                <h4>Ajedrez</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgajedrez"></div>
                                <button id="modalBtnajedrez" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cartas cuatroj show">
                                <h4>Monopoly</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgmonopoly"></div>
                                <button id="modalBtnmono" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj show">
                                <h4>Dominó</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgdomino"></div>
                                <button id="modalBtndomino" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj show">
                                <h4>Jenga</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgjenga"></div>
                                <button id="modalBtnjenga" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>

                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cartas rol cuatroj show">
                                <h4>Clue</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgclue"></div>
                                <button id="modalBtnclue" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv dosj show">
                                <h4>Damas</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgdamas"></div>
                                <button id="modalBtndamas" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Usar</button>
                            </div>
                        </li>
                        <li>	
                            <div class="columnas-juegos tablaj bgc-red filterDiv cartas cuatroj show">
                                <h4>Naipes</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgnaipes"></div>
                                <button id="modalBtnnaipes" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv estrategia dosj show">
                                <h4>Batalla naval</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgbn"></div>
                                <button id="modalBtnbn" class=" ui-btn ui-shadow ui-corner-all">Descripción</button>
                                <button class=" ui-btn ui-shadow ui-corner-all">Comprar</button>
                            </div>
                        </li>
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
