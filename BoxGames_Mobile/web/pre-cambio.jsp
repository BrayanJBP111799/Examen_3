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
            </div>

            <!------------------------------------------------- BODY ------------------------------------------------------>
            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title c-blue" role="heading" style="font-weight: 700;">Restablecer Contraseña</h2>

                <div class="ui-corner-all custom-corners">
                    <div class="ui-bar ui-bar-a">
                        <h3>Antes de poder recuperar tu contraseña necesitamos confimar tu dirección de <b>correo electrónico</b>.</h3>
                    </div>
                    <div class="ui-body ui-body-a">
                        <div class="form-group">
                            <s:form  theme="simple" cssClass="" action = "pre_forgot" id="pre_register" method = "post">
                                <div class="mt-2 text-center"><img src="img/background-img/password.png"></div>
                                <br/>
                                <br/>
                                <div class="col-md-5">
                                    <label for="inputEmail" class="sr-only">Correo Electronico</label>
                                    <s:textfield type = "text" cssClass="form-control" id="inputEmail" name = "u.correo" placeholder="boxgames@correo.com" required="required"></s:textfield>                                                    
                                        <br/>     
                                        <label for="inputid" class="sr-only">Cédula</label>
                                    <s:textfield type = "text" cssClass="form-control" id="inputid" name = "u.cedula" placeholder="Cédula" required="required"></s:textfield>
                                        <br/>
                                    <s:submit cssClass="btn btn-success btn-lg btn-block" type="submit" value="Enviar"></s:submit>
                                    </div>
                            </s:form>
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
