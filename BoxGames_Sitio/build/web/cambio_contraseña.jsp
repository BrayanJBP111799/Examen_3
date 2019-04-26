<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
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

        <style>            
            /* The message box is shown when the user clicks on the password field */
            #message, #messagetwo{
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

            #message p, mssagetwo p {
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

        <section class="contenedor-reg" id="contenedorRegistro">
            <div class="titulo">
                <h1 class="pt-4 pb-3">Restablecer Contraseña</h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">                        
                        <div class="card">
                            <div class="card-header bgc-blue text-white">
                                <h5>Ingrese la información solicitada</h5>
                            </div>

                            <div class="card-body">
                                <center><div class="col-md-9">
                                        <div class="form-group">
                                            <s:fielderror cssClass="error_form"/>
                                            <s:form  theme="simple" cssClass="needs-validation form-redirect" action="change_password" id="registration_form" method = "post">
                                                <div style="display:none;">
                                                    <input name="idU" value='<s:property value="idU" />'>
                                                </div>                                            
                                                <div class="col-md-6">
                                                    <label for="form_password">Nueva Contraseña</label><br>
                                                    <s:textfield type = "password" cssClass="form-control" id="password" name = "u.password" placeholder="Contraseña" required="required"></s:textfield>                                                 
                                                        <div class="invalid-feedback">
                                                            Este campo es requerido.
                                                        </div>
                                                        <div id="message">
                                                            <h6>La contraseña debe tener:</h6>
                                                            <p id="letter" class="invalid">Letras <b>minusculas</b></p>
                                                            <p id="capital" class="invalid">Una letra <b>mayuscula</b></p>
                                                            <p id="number" class="invalid">Un <b>número</b></p>
                                                            <p id="length" class="invalid">Un mínimo de <b>8 caracteres</b></p>
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

                                                        <label for="form_password2">Confirmar Contraseña</label><br>
                                                    <s:textfield type = "password" cssClass="form-control" id="form_password2" placeholder="Confirmar Contraseña" required="required"></s:textfield>                                                
                                                        <div class="invalid-feedback">
                                                            Este campo es requerido.
                                                        </div>
                                                        <div id="messagetwo">
                                                            <h6>Ambas contraseñas deben coincidir:</h6>
                                                            <p id="same" class="invalid">Verfique que ambas coincidan</p>
                                                        </div>
                                                        <script>
                                                            var pass = document.getElementById("password");
                                                            var repass = document.getElementById("form_password2");
                                                            var same = document.getElementById("same");

                                                            // When the user clicks on the password field, show the message box
                                                            repass.onfocus = function () {
                                                                document.getElementById("messagetwo").style.display = "block";
                                                            }

                                                            // When the user clicks outside of the password field, hide the message box
                                                            repass.onblur = function () {
                                                                document.getElementById("messagetwo").style.display = "none";
                                                            }

                                                            repass.onkeyup = function () {
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
                                        </div></center>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>     

        <br>
        <footer class="mt-3">
            <center>
                <br><p >Proyecto Final - Programación V</p>
                <h2 class="text-muted small">&copy; JBS 2019. All Rights Reserved.</h2>
            </center>
        </footer>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>



