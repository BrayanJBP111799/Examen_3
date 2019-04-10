<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
        <style>            
            /* The message box is shown when the user clicks on the password field */
            #message, #messagetwo {
                display:none;
                background: #f1f1f1;
                border: solid 2px #26a69a;
                border-radius: 10px;
                color: #000;
                position: relative;
                padding: 10px;
                padding-left: 15px;
                margin-top: 2px;
            }

            #message p, #messagetwo p {
                padding: 2px 10px;
                font-size: 13px;
            }

            /* Add a green text color and a checkmark when the requirements are right */
            .valid {
                color: #28a745;
            }

            .valid:before {
                position: relative;
                left: -15px;
                content: "✔";
            }

            /* Add a red text color and an "x" when the requirements are wrong */
            .invalid {
                color: #AC2A2A;
            }

            .invalid:before {
                position: relative;
                left: -15px;
                content: "✖";
            }
        </style>
    </head>
    <body>
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="Box-Games">

            <!------------------------------------------------- HEADER ------------------------------------------------------>
            <div data-role="header" data-theme="b">
                <img src="img/logos/logo2_blanco_peq.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
            </div>

            <!------------------------------------------------- BODY ------------------------------------------------------>
            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title c-blue" role="heading" style="font-weight: 700;">Restablecer Contraseña</h2>

                    <s:form  theme="simple" cssClass="form-redirect" action="change_password" method = "post">
                        <s:fielderror cssClass="error_form"/>
                        <div style="display:none;">
                            <input name="idU" value='<s:property value="idU" />'>
                        </div>
                        <label for="password">Nueva Contraseña</label><br>
                        <s:textfield type = "password" cssClass="form-control" id="password" name = "u.password" placeholder="Contraseña" required="required"></s:textfield>
                            <div id="message">
                                <h6>La contraseña debe tener:</h6>
                                <p id="letter" class="invalid">Letras <b>minúsculas.</b></p>
                                <p id="capital" class="invalid">Una letra <b>mayúscula.</b></p>
                                <p id="number" class="invalid">Un <b>número.</b></p>
                                <p id="length" class="invalid">Un mínimo de <b>8 caracteres.</b></p>
                            </div>
                            <script>
                                var myInput = document.getElementById("password");
                                var letter = document.getElementById("letter");
                                var capital = document.getElementById("capital");
                                var number = document.getElementById("number");
                                var length = document.getElementById("length");

                                // When the user clicks on the password field, show the message box
                                myInput.onfocus = function () {
                                    document.getElementById("message").style.display = "block";
                                }

                                // When the user clicks outside of the password field, hide the message box
                                myInput.onblur = function () {
                                    document.getElementById("message").style.display = "none";
                                }

                                // When the user starts to type something inside the password field
                                myInput.onkeyup = function () {
                                    // Validate lowercase letters
                                    var lowerCaseLetters = /[a-z]/g;
                                    if (myInput.value.match(lowerCaseLetters)) {
                                        letter.classList.remove("invalid");
                                        letter.classList.add("valid");
                                    } else {
                                        letter.classList.remove("valid");
                                        letter.classList.add("invalid");
                                    }

                                    // Validate capital letters
                                    var upperCaseLetters = /[A-Z]/g;
                                    if (myInput.value.match(upperCaseLetters)) {
                                        capital.classList.remove("invalid");
                                        capital.classList.add("valid");
                                    } else {
                                        capital.classList.remove("valid");
                                        capital.classList.add("invalid");
                                    }

                                    // Validate numbers
                                    var numbers = /[0-9]/g;
                                    if (myInput.value.match(numbers)) {
                                        number.classList.remove("invalid");
                                        number.classList.add("valid");
                                    } else {
                                        number.classList.remove("valid");
                                        number.classList.add("invalid");
                                    }

                                    // Validate length
                                    if (myInput.value.length >= 8) {
                                        length.classList.remove("invalid");
                                        length.classList.add("valid");
                                    } else {
                                        length.classList.remove("valid");
                                        length.classList.add("invalid");
                                    }
                                }
                            </script>  

                            <br/>
                            <label for="repassword">Confirmar Contraseña</label><br>
                        <s:textfield type = "password" cssClass="form-control" id="repassword" placeholder="Confirmar Contraseña" required="required"></s:textfield>
                            <div id="messagetwo">
                                <h6>Ambas contraseñas no coinciden:</h6>
                                <p id="same" class="invalid">Verfique <b>ambas.</b></p>
                            </div>
                                                        <script>
                                var pass = document.getElementById("password");
                                var repass = document.getElementById("repassword");
                                var same = document.getElementById("same");
                                
                                                                // When the user clicks on the password field, show the message box
                                repass.onfocus = function () {
                                    document.getElementById("messagetwo").style.display = "block";
                                }

                                // When the user clicks outside of the password field, hide the message box
                                repass.onblur = function () {
                                    document.getElementById("messagetwo").style.display = "none";
                                }
                                
                                repass.onkeyup = function (){
                                    // Validate lowercase letters
                                    if (repass.value == pass.value) {
                                        same.classList.remove("invalid");
                                        same.classList.add("valid");
                                    } else {
                                        same.classList.remove("valid");
                                        same.classList.add("invalid");
                                    }
                                }
                                </script>
                            <br/>

                        <s:submit cssClass="btn btn-success btn-lg btn-block" type="submit" value="Guardar"></s:submit>
                    </s:form>
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
                    <div class="ui-panel-inner"></div>
                    <li>
                        <a href="login.jsp" rel="external">Ingresar</a>
                    </li>
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
