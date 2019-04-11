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
                <h2 class="ui-title c-blue" role="heading" style="font-weight: 700;">Carrito de Compras</h2>
                <a href="viewrecords" class="btn btn-blueBG" style="text-decoration:none; color:#fff;">Continua comprando</a>
                <table data-role="table" id="table-column-toggle" data-mode="columntoggle" class="ui-responsive table-stroke" data-column-btn-theme="b" data-column-btn-text="Columnas" data-column-popup-theme="a">
                    <thead>
                        <tr>
                            <th data-priority="1">Nombre</th>
                            <th data-priority="1">Precio</th>
                            <th data-priority="1">Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="carrito_info">
                            <tr>
                                <th><s:property value="getIDJuegoMesa().getValue()"></s:property></th>
                                <td>₡<s:property value="Precio.getValue()"></s:property></td>
                                <td><a href='deletegame?id_carrito=<s:property value="getIDCarritoCompra()"/>' class="btn btn-blueBG" rel="external" style="text-decoration:none; color:#fff;">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                    </a></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
                <div class="alert alert-info">
                    <p class="float-left"><strong>Precio total:</strong> ₡<s:property value="total"/></p>
                    <a href='pay.action?submitType=loaddata&idCliente=<s:property value="#session.session_cedula"/>&precio=<s:property value="total"></s:property>' rel="external" style="text-decoration:none; color:#fff;" class="btn btn-success float-right">Pagar</a>
                    <br>
                    <br>
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

