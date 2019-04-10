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

            <div class="topjuegos">
                <div class="space15"></div>
                <div class="fondotopjuegos">
                    <h2>Juegos disponibles</h2>
                    <h3>Para niños y adultos.</h3>
                </div>
            </div>
        </header>
        <button id="topBtnC">
            <a href='viewcarrito?idC=<s:property value="#session.session_cedula"/>' rel="external" style="text-decoration:none; color:black;">
                <i class="fas fa-shopping-cart"></i>
            </a>
        </button>
                
        <section class="contenedor-allgames">
            <center>
                <h2 class="c-red"><i class="fas fa-dice-d20"></i> Juegos <i class="fas fa-dice-d20"></i></h2>
                <p class="c-green" style="padding: 20px 0; margin-bottom: 0;">Busca y elige algún juego que te guste.</p>
            </center>

            <!-- Control buttons -->
            <div class="juegosall-general">
                <center>
                    <input type="text" id="myInput" class="txtfiltro" onkeyup="myFunction()" placeholder="Introduce el nombre del juego">
                    <br>
                    <p class="c-green" style="padding: 20px 0; margin-bottom: 0;">O selecciona alguna de las siguientes categorías.</p>
                    <div id="myBtnContainer" class="botonesfiltro">
                        <button class="btn active" onclick="filterSelection('all')">Todos</button>
                        <button class="btn" onclick="filterSelection('Cartas')"> Cartas</button>
                        <button class="btn" onclick="filterSelection('Rol')">Rol</button>
                        <button class="btn" onclick="filterSelection('Tactica')">Táctica</button>
                        <button class="btn" onclick="filterSelection('Competencia')">Competencia</button>
                        <button class="btn" onclick="filterSelection('Astucia')">Astucia</button>
                        <button class="btn" onclick="filterSelection('Agilidad')">Agilidad</button>
                    </div>
                </center>
                <hr>
                <div id="myUL">
                    <div class="juegos-general">
                        <s:iterator  value="juegos_list">
                            <%--<s:form theme="simple" action="addtocar" method = "post">--%>
                                <li>
<!--                                    <div style="display:none;">
                                        <input name = "c.IDCliente" value='<s:property value="#session.session_cedula" />'>
                                        <input name = "c.IDJuego" value='<s:property value="IDJuego" />'>
                                    </div>-->
                                    <div class="columnas-juegos tablaj bgc-red filterDiv dados <s:property value="tipoJuego.getValue()"></s:property>">
                                        <h4><s:property value="nombreJuego.getValue()"></s:property></h4>
                                        <div class="border-alljuegos"></div>
                                        <div class="img-mini-juego"><img class="img-mini-juego" src='<s:property value="imagenJuego.getValue()"></s:property>'></div>
                                        <button id="modalBtncolon" type="button" data-toggle="modal" data-target='#<s:property value="nombreJuego.getValue()"></s:property>'>Descripción</button>
                                        <s:if test="%{#session.session_correo != null}">
                                        <button><a href='addtocar?id_cliente=<s:property value="#session.session_cedula"/>&game=<s:property value="nombreJuego.getValue()"></s:property>&price=<s:property value="precioJuego"></s:property>' rel="external" style="text-decoration:none; color:black;">Comprar</a></button>
                                        </s:if>
                                    </div>
                                </li>
                            <%--</s:form>--%>
                        </s:iterator>
                        
                    </div>
                </div>
            </div>           
            
            <hr><br>
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
            </script>            <
        </section>

        <s:iterator  value="juegos_list"> 
        <div class="modal fade" id='<s:property value="nombreJuego.getValue()"/>' tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="false">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle"><s:property value="nombreJuego.getValue()"></s:property></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <span class="badge badge-primary">Tipo: <s:property value="tipoJuego.getValue()"></s:property></span>
                        <span class="badge badge-danger">Jugadores: <s:property value="cantidadJuego"></s:property></span>
                        <br><br>
                        <p><s:property value="descripcionJuego.getValue()"></s:property></p>
                        <div class="space15"></div>
                        <h4>₡<s:property value="precioJuego"></s:property></h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        </s:iterator>       
        
        <footer>
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

        <script type="text/javascript" src="js/script.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"  crossorigin="anonymous"></script>-->
        <!--        <script type="text/javascript" src="js/main.js"></script>-->
    </body>
</html>
