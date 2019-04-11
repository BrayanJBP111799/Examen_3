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
        <script src="https://use.fontawesome.com/c560c025cf.js"></script>
    </head>
    <body>
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
        <%int Total = 0;%>
        <div class="container">
            <div class="card shopping-cart">
                     <div class="card-header bg-dark text-light">
                         <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                         Carrito
                         <a href="viewrecords" class="btn btn-outline-info btn-sm pull-right">Continua comprando</a>
                         <div class="clearfix"></div>
                     </div>
                     <div class="card-body">
                         <s:iterator value="carrito_info">
                             <!-- PRODUCT -->
                             <div class="row">
                                 <div class="col-12 col-sm-12 col-md-2 text-center">
                                        <img class="img-responsive" src="https://image.flaticon.com/icons/svg/1593/1593937.svg" alt="prewiew" width="100" height="100">
                                 </div>
                                 <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                                     <h4 class="product-name"><strong>-<s:property value="getIDJuegoMesa().getValue()"></s:property></strong></h4>
<!--                                     <h4>
                                         <small>Product description</small>
                                     </h4>-->
                                 </div>
                                 <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                                     <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                         <h6><strong>₡<s:property value="Precio.getValue()"/><span class="text-muted"></span></strong></h6>
                                     </div>                                 
                                     <%                                        
                                        Total += 10000;
                                     %>
                                     
<!--                                     <div class="col-4 col-sm-4 col-md-4">
                                         <div class="quantity">
                                             <input type="button" value="+" class="plus">
                                             <input type="number" step="1" max="99" min="1" value="1" title="Qty" class="qty"
                                                    size="4">
                                             <input type="button" value="-" class="minus">
                                         </div>
                                     </div>-->
                                     <div class="col-2 col-sm-2 col-md-2 text-right">
                                         <button type="button" class="btn btn-outline-danger btn-xs">                                             
                                            <a href='deletegame?id_carrito=<s:property value="getIDCarritoCompra()"/>' rel="external" style="text-decoration:none; color:black;">
                                                <i class="fa fa-trash" aria-hidden="true"></i>
                                            </a>
                                         </button>
                                     </div>
                                 </div>
                             </div>
                             <hr>
                             <!-- END PRODUCT -->
                         </s:iterator>
                             
<!--                         <div class="pull-right">
                             <a href="" class="btn btn-outline-secondary pull-right">
                                 Update shopping cart
                             </a>
                         </div>-->
                     </div>
                     <div class="card-footer">
                         <div class="coupon col-md-5 col-sm-5 no-padding-left pull-left">
                             <div class="row">                                 
                                 <div class="col-6">
                                     <img src="img/logos/dice.png" width="68" height="68">
                                 </div>
                             </div>
                         </div>
                         <div class="pull-right" style="margin: 10px">
                             <a href="" class="btn btn-success pull-right">Pagar</a>
                             <div class="pull-right" style="margin: 5px">
                                 Total: <b>₡<s:property value="total"/></b>
                             </div>
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
    </body>
</html>
