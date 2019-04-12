<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Box-Games</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/theme/customAB.css" />
        <link rel="stylesheet" href="css/theme/jquery.mobile.icons.min.css" />
        <link rel="stylesheet" href="jqmobile/demos/css/themes/default/jquery.mobile.structure-1.4.5.min.css">
        <link rel="stylesheet" href="jqmobile/demos/_assets/css/jqm-demos.css">
        <link rel="icon" href="img/logos/dice.png">

        <link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://use.fontawesome.com/c560c025cf.js"></script>

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
                <h2 class="ui-title c-blue" role="heading" style="font-weight: 700; color: #328BC3;">Información de pago</h2>
                <div class="ui-bar ui-bar-a">
                    <h3>Llena los espacios que se solicitan abajo para completar el pago.</h3>
                </div><br>
                <div class='card-wrapper'></div>
                <script src="js/card/card.js"></script>
                <s:form validation="false" theme="simple" action = "pay" id="payment_form" method = "post">
                    <input type="text" name="number" onchange="getNum();" id="number" placeholder="Número de tarjeta"/>
                    <input type="text" name="name" onchange="getName();" id="name" placeholder="Nombre"/>
                    <input type="text" name="expiry" onchange="getEx();" id="expiry" placeholder="Fecha de expiración"/>
                    <input type="text" name="cvc" onchange="getCVC();" id="cvc" placeholder="Código de seguridad"/>
                    <hr><br>
                    <div style="">
                        <input id="Pcardnumber" name="p.NumTarjeta" class="inputpagos" type="text" inputmode="numeric" >
                        <input id="Pname" name="p.NomTarjeta" class="inputpagos" maxlength="20" type="text" >
                        <input id="Pexpirationdate" name="p.FechaVen"  class="inputpagos" type="text" inputmode="numeric" placeholder="mm/aa">
                        <input id="Psecuritycode" name="p.Codigo" class="inputpagos" type="text" pattern="[0-9]*" inputmode="numeric">
                        <input name="p.IDCliente" value="<s:property value='idc'/>" >
                        <input type="text" name="p.TotalPagar" value="<s:property value='precio'/>" >
                    </div>
                    <button type="submit" name="submitType" rel="external" style="text-decoration:none; color:#fff;" class="btn-blueBG">Continuar</button>
                </s:form> 
                <script>

                    var card = new Card({
                        form: 'form',
                        container: '.card-wrapper',

                        placeholders: {
                            number: '**** **** **** ****',
                            name: 'Arya Stark',
                            expiry: '**/****',
                            cvc: '***'
                        }
                    });
                </script>
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

        <script>
            function getNum() {
                var num = document.getElementById("number").value;
                document.getElementById("Pcardnumber").value = num;
            }

            function getName() {
                var name = document.getElementById("name").value;
                document.getElementById("Pname").value = name;
            }

            function getEx() {
                var datex = document.getElementById("expiry").value;
                document.getElementById("Pexpirationdate").value = datex;
            }

            function getCVC() {
                var cvc = document.getElementById("cvc").value;
                document.getElementById("Psecuritycode").value = cvc;
            }
        </script>
    </body>
</html>

