<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Box-Games</title>
        <link rel="icon" href="img/logos/dice.png">
        <link rel="stylesheet" type="text/css" href="css/payment.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway|Rock+Salt|Source+Code+Pro:300,400,600" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/imask/3.4.0/imask.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

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
        </header>
        <br><br>  

    <center>
        <div class="payment-title">
            <h1 style="color:#3282c3;">Información del Pago</h1><br> 
            <p>Completa los espacios de abajo para registrar un medio de pago.</p><br><br> 
        </div>
        <div class="container preload">
            <div class="creditcard">
                <div class="front">
                    <div id="ccsingle"></div>
                    <svg version="1.1" id="cardfront" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                         x="0px" y="0px" viewBox="0 0 750 471" style="enable-background:new 0 0 750 471;" xml:space="preserve">
                    <g id="Front">
                    <g id="CardBackground">
                    <g id="Page-1_1_">
                    <g id="amex_1_">
                    <path id="Rectangle-1_1_" class="lightcolor grey" d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
                          C0,17.9,17.9,0,40,0z" />
                    </g>
                    </g>
                    <path class="darkcolor greydark" d="M750,431V193.2c-217.6-57.5-556.4-13.5-750,24.9V431c0,22.1,17.9,40,40,40h670C732.1,471,750,453.1,750,431z" />
                    </g>
                    <text transform="matrix(1 0 0 1 60.106 295.0121)" id="svgnumber" class="st2 st3 st4">0123 4567 8910 1112</text>
                    <text transform="matrix(1 0 0 1 54.1064 428.1723)" id="svgname" class="st2 st5 st6">JOHN DOE</text>
                    <text transform="matrix(1 0 0 1 54.1074 389.8793)" class="st7 st5 st8">Titular de la tarjeta</text>
                    <text transform="matrix(1 0 0 1 479.7754 388.8793)" class="st7 st5 st8">Vencimiento</text>
                    <text transform="matrix(1 0 0 1 65.1054 241.5)" class="st7 st5 st8">Número de tarjeta</text>
                    <g>
                    <text transform="matrix(1 0 0 1 574.4219 433.8095)" id="svgexpire" class="st2 st5 st9">01/23</text>
                    <text transform="matrix(1 0 0 1 479.3848 417.0097)" class="st2 st10 st11">VALID</text>
                    <text transform="matrix(1 0 0 1 479.3848 435.6762)" class="st2 st10 st11">THRU</text>
                    <polygon class="st2" points="554.5,421 540.4,414.2 540.4,427.9 		" />
                    </g>
                    <g id="cchip">
                    <g>
                    <path class="st2" d="M168.1,143.6H82.9c-10.2,0-18.5-8.3-18.5-18.5V74.9c0-10.2,8.3-18.5,18.5-18.5h85.3
                          c10.2,0,18.5,8.3,18.5,18.5v50.2C186.6,135.3,178.3,143.6,168.1,143.6z" />
                    </g>
                    <g>
                    <g>
                    <rect x="82" y="70" class="st12" width="1.5" height="60" />
                    </g>
                    <g>
                    <rect x="167.4" y="70" class="st12" width="1.5" height="60" />
                    </g>
                    <g>
                    <path class="st12" d="M125.5,130.8c-10.2,0-18.5-8.3-18.5-18.5c0-4.6,1.7-8.9,4.7-12.3c-3-3.4-4.7-7.7-4.7-12.3
                          c0-10.2,8.3-18.5,18.5-18.5s18.5,8.3,18.5,18.5c0,4.6-1.7,8.9-4.7,12.3c3,3.4,4.7,7.7,4.7,12.3
                          C143.9,122.5,135.7,130.8,125.5,130.8z M125.5,70.8c-9.3,0-16.9,7.6-16.9,16.9c0,4.4,1.7,8.6,4.8,11.8l0.5,0.5l-0.5,0.5
                          c-3.1,3.2-4.8,7.4-4.8,11.8c0,9.3,7.6,16.9,16.9,16.9s16.9-7.6,16.9-16.9c0-4.4-1.7-8.6-4.8-11.8l-0.5-0.5l0.5-0.5
                          c3.1-3.2,4.8-7.4,4.8-11.8C142.4,78.4,134.8,70.8,125.5,70.8z" />
                    </g>
                    <g>
                    <rect x="82.8" y="82.1" class="st12" width="25.8" height="1.5" />
                    </g>
                    <g>
                    <rect x="82.8" y="117.9" class="st12" width="26.1" height="1.5" />
                    </g>
                    <g>
                    <rect x="142.4" y="82.1" class="st12" width="25.8" height="1.5" />
                    </g>
                    <g>
                    <rect x="142" y="117.9" class="st12" width="26.2" height="1.5" />
                    </g>
                    </g>
                    </g>
                    </g>
                    <g id="Back">
                    </g>
                    </svg>
                </div>
                <div class="back">
                    <svg version="1.1" id="cardback" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                         x="0px" y="0px" viewBox="0 0 750 471" style="enable-background:new 0 0 750 471;" xml:space="preserve">
                    <g id="Front">
                    <line class="st0" x1="35.3" y1="10.4" x2="36.7" y2="11" />
                    </g>
                    <g id="Back">
                    <g id="Page-1_2_">
                    <g id="amex_2_">
                    <path id="Rectangle-1_2_" class="darkcolor greydark" d="M40,0h670c22.1,0,40,17.9,40,40v391c0,22.1-17.9,40-40,40H40c-22.1,0-40-17.9-40-40V40
                          C0,17.9,17.9,0,40,0z" />
                    </g>
                    </g>
                    <rect y="61.6" class="st2" width="750" height="78" />
                    <g>
                    <path class="st3" d="M701.1,249.1H48.9c-3.3,0-6-2.7-6-6v-52.5c0-3.3,2.7-6,6-6h652.1c3.3,0,6,2.7,6,6v52.5
                          C707.1,246.4,704.4,249.1,701.1,249.1z" />
                    <rect x="42.9" y="198.6" class="st4" width="664.1" height="10.5" />
                    <rect x="42.9" y="224.5" class="st4" width="664.1" height="10.5" />
                    <path class="st5" d="M701.1,184.6H618h-8h-10v64.5h10h8h83.1c3.3,0,6-2.7,6-6v-52.5C707.1,187.3,704.4,184.6,701.1,184.6z" />
                    </g>
                    <text transform="matrix(1 0 0 1 621.999 227.2734)" id="svgsecurity" class="st6 st7">985</text>
                    <g class="st8">
                    <text transform="matrix(1 0 0 1 518.083 280.0879)" class="st9 st6 st10">Codigo de Seguridad</text>
                    </g>
                    <rect x="58.1" y="378.6" class="st11" width="375.5" height="13.5" />
                    <rect x="58.1" y="405.6" class="st11" width="421.7" height="13.5" />
                    <text transform="matrix(1 0 0 1 59.5073 228.6099)" id="svgnameback" class="st12 st13">John Doe</text>
                    </g>
                    </svg>
                </div>
            </div>
        </div>
        <div class="form-container">
            <div class="field-container">
                <label for="name">Nombre</label>
                <input id="name" class="inputpagos" maxlength="20" type="text">
            </div>
            <div class="field-container">
                <label for="cardnumber">Número en la tarjeta</label><span style="display:none;" id="generatecard">generate random</span>
                <input id="cardnumber" class="inputpagos" type="text" pattern="[0-9]*" inputmode="numeric">
                <svg id="ccicon" class="ccicon" width="750" height="471" viewBox="0 0 750 471" version="1.1" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink">

                </svg>
            </div>
            <div class="field-container">
                <label for="expirationdate">Fecha de Vencimiento</label>
                <input id="expirationdate" class="inputpagos" type="text" pattern="[0-9]*" inputmode="numeric" placeholder="mm/aa">
            </div>
            <div class="field-container">
                <label for="securitycode">Código de Seguridad</label>
                <input id="securitycode" class="inputpagos" type="text" pattern="[0-9]*" inputmode="numeric">
            </div>
        </div><br>
    </center>

    <br><br>

    <footer>
        <center>
            <br><p style="font-size: 0.9em">Proyecto Final - Programación V</p>
            <p style="font-size: 0.7em; padding-top: 1%; color:#757575" class="text-muted small">&copy; JBS 2019. All Rights Reserved.</p>
        </center>
    </footer>

    <script type="text/javascript" src="js/script.js"></script>

    <script type="text/javascript" src="js/payment.js"></script>

</body>
</html>