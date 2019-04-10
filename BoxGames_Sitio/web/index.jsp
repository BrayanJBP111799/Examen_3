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

            <div class="slider"></div>
        </header>
        <button id="topBtn"><i class="fas fa-chevron-circle-up"></i></button>
        <section class="contenedor-obj" id="contenedor2">
            <div class="space15"></div>

            <div class="titulo">
                <h1>¿Buscas diversión? <br>Tenemos la solución <i class="far fa-thumbs-up"></i></h1>
            </div>

            <div class="obj-general">
                <div class="columna-obj obj-text">
                    <p>Nuestro negocio se especializa en la obtención, búsqueda y entrega de juegos de mesa. Todos aquellos interesados en tener alguna experiencia tradicional de entrenimiento en familia o amigos, han llegado al lugar correcto.</p>
                </div>
                <div class="columna-obj img-obj1"></div>
                <div class="columna-obj img-obj2"></div>
                <div class="columna-obj obj-text">
                    <p>Queremos mantener tu felicidad creando nuevas amistades, pasando el tiempo con tus seres más queridos. Anímate y busca algo que te guste de los distintos juegos de mesa, luego continua con la diversión.</p>
                </div>
            </div>
        </section>
        <section class="contenedor-pasos">
            <div class="space15"></div>
            <div>
                <center>
                    <h2 class="c-red"><i class="fas fa-dice-d20"></i> PASOS <i class="fas fa-dice-d20"></i></h2>
                    <h3 class="c-green" style="padding: 20px 0;">¿Qué debes hacer?</h3>
                </center>
            </div>
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
                <div class="columna-pasos bgc-green">
                    <div class="img-pasos img-juega"></div>
                    <h2>Juega</h2>
                    <h3>Diviertete y pasa el rato en compañía con tus seres queridos.</h3>
                </div>
            </div>
        </section>
        <hr>
        <section class="contenedor-juegos" id="contenedor3">
            <div class="space15"></div>
            <center>
                <h2 class="c-green"> <i class="fab fa-critical-role c-red"></i> Artículos Destacados <i class="fab fa-critical-role c-red"></i></h2>
                <h3 class="c-red" style="padding: 20px 0;">Observa los juegos de mesa más buscados.</h3>
            </center>
            <div class="row-masjuegos">
                <div class="masjuegos">
                    <h3>Busca y conoce más juegos.</h3>
                    <!--<a href="juegos.jsp"><span class="c-gray">Juegos</span></a>-->
                    <%--<s:form action="viewrecords" method="post">--%>
                        <a href="viewrecords" rel="external"><span class="c-gray">Juegos</span></a>  
                        <%--<s:submit cssClass="c-gray" value="Cargar Juegos"></s:submit>--%>
                    <%--</s:form>--%>
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
                        <a href="#">Comprar</a>
                    </div>
                </div>
                <div class="columna-juegos">
                    <div class="table-juegos">
                        <h2>Ajedrez</h2>
                        <div class="border-juegos"></div>
                        <div class="img-juego-des imgajedrez"></div>
                        <p class="mt-3">"Para pasar el rato."</p>
                        <a href="#">Comprar</a>
                    </div>
                </div>
                <div class="columna-juegos">
                    <div class="table-juegos">
                        <h2>Jenga</h2>
                        <div class="border-juegos"></div>
                        <div class="img-juego-des imgjenga"></div>
                        <p class="mt-3">"Para ganar nuevas experiencias."</p>
                        <a href="#">Comprar</a>
                    </div>
                </div>
                <div class="columna-juegos">
                    <div class="table-juegos">
                        <h2>Clue</h2>
                        <div class="border-juegos"></div>
                        <div class="img-juego-des imgclue"></div>
                        <p class="mt-3">"Para pasar largas horas de diversión."</p>
                        <a href="#">Comprar</a>
                    </div>
                </div>
            </div>
            <div class="space15"></div>

        </section>
        <hr>
        <br>

        <footer>
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

        <script type="text/javascript" src="js/animation.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>