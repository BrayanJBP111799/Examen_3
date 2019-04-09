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
                    <li><a href="login.jsp">Ingresar</a></li>
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

        <button id="topBtn"><i class="fas fa-chevron-circle-up"></i></button>
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
                        <button class="btn" onclick="filterSelection('cartas')"> Cartas</button>
                        <button class="btn" onclick="filterSelection('rol')">Rol</button>
                        <button class="btn" onclick="filterSelection('dosj')">2 jugadores</button>
                        <button class="btn" onclick="filterSelection('cuatroj')">4 o más jugadores</button>
                        <button class="btn" onclick="filterSelection('estrategia')">Estrategía</button>
                    </div>
                </center>
                <hr>
                <div id="myUL">
                    <div class="juegos-general">
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv dados cuatroj">
                                <h4>Colones de Catán</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgcolones"></div>
                                <button id="modalBtncolon" type="button" data-toggle="modal" data-target="#coloncatan">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj">
                                <h4>Escaleras y serpientes</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imges"></div>
                                <button id="modalBtnes" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv estrategia rol cuatroj">
                                <h4>Risk</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgrisk"></div>
                                <button id="modalBtnrisk" type="button" data-toggle="modal" data-target="#risk">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj">
                                <h4>Scrabble</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgscrabble"></div>
                                <button id="modalBtnscrabble" type="button" data-toggle="modal" data-target="#scrabble">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <!--                    </div>
                                            <div class="juegos-general">-->
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv estrategia dosj">
                                <h4>Ajedrez</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgajedrez"></div>
                                <button id="modalBtnajedrez" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cartas cuatroj">
                                <h4>Monopoly</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgmonopoly"></div>
                                <button id="modalBtnmono" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj">
                                <h4>Dominó</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgdomino"></div>
                                <button id="modalBtndomino" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cuatroj">
                                <h4>Jenga</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgjenga"></div>
                                <button id="modalBtnjenga" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <!--                    </div>
                                            <div class="juegos-general">-->
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv cartas rol cuatroj">
                                <h4>Clue</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgclue"></div>
                                <button id="modalBtnclue" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv dosj">
                                <h4>Damas</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgdamas"></div>
                                <button id="modalBtndamas" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Usar</button>
                            </div>
                        </li>
                        <li>	
                            <div class="columnas-juegos tablaj bgc-red filterDiv cartas cuatroj">
                                <h4>Naipes</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgnaipes"></div>
                                <button id="modalBtnnaipes" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
                        <li>
                            <div class="columnas-juegos tablaj bgc-red filterDiv estrategia dosj">
                                <h4>Batalla naval</h4>
                                <div class="border-alljuegos"></div>
                                <div class="img-mini-juego imgbn"></div>
                                <button id="modalBtnbn" type="button" data-toggle="modal" data-target="#escaser">Descripción</button>
                                <button>Comprar</button>
                            </div>
                        </li>
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
            </script>
        </section>

        <div class="modal fade" id="coloncatan" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Colones de Catán</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Los colonos de Catán, un juego de estrategia que, de manera silenciosa y constante, ha ido multiplicando seguidores y que hoy acumula más de 20 millones de unidades vendidas en todo el mundo. </p>
                        <div class="space15"></div>
                        <p>El juego trata sobre explorar una isla sin colonizar, y todo el mundo tiene la oportunidad de convertirse en lo que quiera. Hay competición por el terreno y los recursos desde el inicio de la partida.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="escaser" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Escaleras y serpientes</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>La dinámica de este juego es simple: se comienza en la parte baja del tablero y, mediante las sucesivas tiradas del dado, el jugador intentará ir evolucionando, subiendo hasta la parte superior tratando que las múltiples serpientes no lo muerdan y de encontrar escaleras que lo ayuden en su ascenso.</p>
                        <div class="space15"></div>
                        <p>En otras palabras, las escaleras representan las virtudes que nos impulsan a lo alto (referencia a lo bueno y lo correcto) mientras que las serpientes son los vicios que atrasan nuestro avance (referencia a lo malo e injusto).</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="risk" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Risk</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Los jugadores tienen que conquistar territorios enemigos creando un ejército, moviendo sus tropas y luchando en batallas. Este emocionante juego está lleno de traiciones, alianzas y ataques sorpresa. </p>
                        <div class="space15"></div>
                        <p>Conquista todo un nuevo mundo donde solo puede existir un dueño de todas las tierras. ¿Quién será el ganador?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="modal fade" id="risk" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Scrabble</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>El objetivo del juego es acumular la mayor puntuación posible formando palabras en un tablero de 15×15, algunas de ellas bonificadas, utilizando fichas individuales que se cogen aleatoriamente de un saquito o bolsa. </p>
                        <div class="space15"></div>
                        <p>El tablero tiene algunas casillas bonificadas, que permiten multiplicar los puntos obtenidos: donde te permiten aumentar considerablemente el puntaje de la ficha colocada en esa casilla. El jugador con mayor puntuación total acumulada se convierte en el ganador de la partida.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        
        <footer>
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

        <script type="text/javascript" src="js/script.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"  crossorigin="anonymous"></script>
        <!--        <script type="text/javascript" src="js/main.js"></script>-->
    </body>
</html>
