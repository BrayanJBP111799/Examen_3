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
                <h2 class="ui-title c-blue" role="heading" style="font-weight: 700;">Juegos Disponibles</h2>
                <center>
                    <p class="c-green" style="padding: 20px 0; margin-bottom: 0;">Busca y elige algún juego que te guste.</p>
                </center>

                <input type="search" name="password" id="myInput" class="txtfiltro" onkeyup="myFunction()" placeholder="Nombre del juego">
                <br>
                <p class="c-green" style="margin-bottom: 0;">O selecciona alguna de las siguientes categorías.</p>
                <div id="myBtnContainer" class="botonesfiltro" data-role="controlgroup" data-type="horizontal" data-mini="true">
                    <button class="btn active" onclick="filterSelection('all')">Todos</button>
                    <button class="btn" onclick="filterSelection('Cartas')"> Cartas</button>
                    <button class="btn" onclick="filterSelection('Rol')">Rol</button>
                    <button class="btn" onclick="filterSelection('Tactica')">Táctica</button>
                    <button class="btn" onclick="filterSelection('Competencia')">Competencia</button>
                    <button class="btn" onclick="filterSelection('Astucia')">Astucia</button>
                    <button class="btn" onclick="filterSelection('Agilidad')">Agilidad</button>
                </div>

                <s:iterator  value="juegos_list">
                    <div data-role="popup" id="<s:property value="nombreJuego.getValue()"/>" data-overlay-theme="b" data-theme="b" data-dismissible="false" style="max-width:400px;">
                        <div data-role="header" data-theme="a">
                            <h1><s:property value="nombreJuego.getValue()"></s:property></h1>
                            </div>
                            <div role="main" class="ui-content">
                                <span class="badge badge-primary">Tipo: <s:property value="tipoJuego.getValue()"></s:property></span>
                            <span class="badge badge-danger">Jugadores: <s:property value="cantidadJuego"></s:property></span>
                                <br><br>
                                <p><s:property value="descripcionJuego.getValue()"></s:property></p>
                                <div class="space15"></div>
                                <h4>₡<s:property value="precioJuego"></s:property></h4>

                                <a href='addtocar?id_cliente=<s:property value="#session.session_cedula"/>&game=<s:property value="nombreJuego.getValue()"></s:property>' rel="external" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b">Comprar</a>
                                <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b" data-rel="back" data-transition="flow">Cerrar</a>
                            </div>
                        </div>
                </s:iterator>


                <hr>
                <div id="myUL">
                    <div class="juegos-general">
                        <s:iterator  value="juegos_list">
                            <li>
                                <div class="columnas-juegos tablaj bgc-red filterDiv dados <s:property value="tipoJuego.getValue()"></s:property>">
                                    <h4><s:property value="nombreJuego.getValue()"></s:property></h4>
                                        <div class="border-alljuegos"></div>
                                        <div class="img-mini-juego"><img class="img-mini-juego" src='<s:property value="imagenJuego.getValue()"></s:property>'></div>
                                        <!--                                <button id="modalBtncolon">Descripción</button>-->
                                        <a href="#<s:property value="nombreJuego.getValue()"></s:property>" data-rel="popup" data-position-to="window" data-transition="pop" class="btn btn-blueBG" style="margin: 0 auto; color:#fff; text-decoration: none;">Descripción</a>
                                        <!--                                <button>Comprar</button>-->
                                        <a href='addtocar?id_cliente=<s:property value="#session.session_cedula"/>&game=<s:property value="nombreJuego.getValue()"></s:property>' rel="external" class="btn btn-blueBG" style="margin: 0 auto; color:#fff; text-decoration: none;">Comprar</a>
                                    </div>
                                </li>
                        </s:iterator>
                    </div>
                </div>
            </div>

            <script>
                filterSelection("all")
                function filterSelection(c) {
                    var x, i;
                    x = document.getElementsByClassName("filterDiv");
                    if (c == "all")
                        c = "";
                    // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
                    for (i = 0; i < x.length; i++) {
                        w3RemoveClass(x[i], "show");
                        if (x[i].className.indexOf(c) > -1)
                            w3AddClass(x[i], "show");
                    }
                }

                // Show filtered elements
                function w3AddClass(element, name) {
                    var i, arr1, arr2;
                    arr1 = element.className.split(" ");
                    arr2 = name.split(" ");
                    for (i = 0; i < arr2.length; i++) {
                        if (arr1.indexOf(arr2[i]) == -1) {
                            element.className += " " + arr2[i];
                        }
                    }
                }

                // Hide elements that are not selected
                function w3RemoveClass(element, name) {
                    var i, arr1, arr2;
                    arr1 = element.className.split(" ");
                    arr2 = name.split(" ");
                    for (i = 0; i < arr2.length; i++) {
                        while (arr1.indexOf(arr2[i]) > -1) {
                            arr1.splice(arr1.indexOf(arr2[i]), 1);
                        }
                    }
                    element.className = arr1.join(" ");
                }

                // Add active class to the current control button (highlight it)
                var btnContainer = document.getElementById("myBtnContainer");
                var btns = btnContainer.getElementsByClassName("btn");
                for (var i = 0; i < btns.length; i++) {
                    btns[i].addEventListener("click", function () {
                        var current = document.getElementsByClassName("active");
                        current[0].className = current[0].className.replace(" active", "");
                        this.className += " active";
                    });
                }

                function myFunction() {
                    // Declare variables
                    var input, filter, ul, li, a, i, txtValue;
                    input = document.getElementById('myInput');
                    filter = input.value.toUpperCase();
                    ul = document.getElementById("myUL");
                    li = ul.getElementsByTagName('li');

                    // Loop through all list items, and hide those who don't match the search query
                    for (i = 0; i < li.length; i++) {
                        a = li[i].getElementsByTagName("div")[0];
                        txtValue = a.textContent || a.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            li[i].style.display = "";
                        } else {
                            li[i].style.display = "none";
                        }
                    }
                }
            </script>

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
    </body>
</html>
