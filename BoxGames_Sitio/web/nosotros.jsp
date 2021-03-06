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

            <div class="topobjetivos">
                <div class="space15"></div>
                <div class="fondotopobjetivos">
                    <h2>Conoce sobre nuestro negocio</h2>
                </div>
            </div>
        </header>

        <section class="contenedor-obj" id="contenedorObjetivos">
            <div class="titulo">
                <h1 style="padding-top: 20px;">Objetivos</h1>
            </div>
            <div class="space15"></div>
            <div class="flextab" id="objetivos">
                <button class="tablink" onclick="openPage('Home', this, '#328BC3')">Promover</button>
                <button class="tablink" onclick="openPage('News', this, '#328BC3')" id="defaultOpen">Ayudar</button>
                <button class="tablink" onclick="openPage('Contact', this, '#328BC3')">Brindar</button>
            </div>

            <div id="Home" class="tabcontent mx-auto">
                <h3>Promover</h3>
                <p>las actividades familiares y entre amigos para pasar el rato en compañía.</p>
            </div>

            <div id="News" class="tabcontent mx-auto">
                <h3>Ayudar</h3>
                <p>a aquellos que quieran tener nuevas experiencias y recuerdos con sus seres queridos.</p> 
            </div>

            <div id="Contact" class="tabcontent mx-auto">
                <h3>Brindar</h3>
                <p>una plataforma para la compra de juegos de una manera rápida y sencilla.</p>
            </div>

            <div class="obj-general">
                <div class="columna-obj obj-text">
                    <h3 class="mision">Misión</h3>
                    <p class="mision-des">Mantener las costumbres y tradiciones pasadas por medio de una fuerte relación con tus seres queridos (familia, amigos o gente de confianza), mediante la incorporación de juegos de mesa para la promoción de nuevas experiencias y recuerdos.</p>
                </div>
                <div class="columna-obj img-obj4"></div>
                <div class="columna-obj img-obj3"></div>
                <div class="columna-obj obj-text">
                    <h3 class="vision">Visión</h3>
                    <p class="vision-des">Ser un apoyo para la búsqueda de juegos de mesa de cualquier tipo, donde las personas puedan buscar y comprar lo que más necesiten de acuerdo a sus gustos y necesidades, esto con el fin de cada uno pueda divertirse y estar acompañado de los seres que más quiere en la vida.</p>
                </div>
            </div>
        </section>

        <footer>
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

        <script type="text/javascript" src="js/animation.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
