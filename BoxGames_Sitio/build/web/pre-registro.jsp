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
                <h1 class="pt-4 pb-3">Registro de usuarios</h1>
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
                                            <s:form  theme="simple" cssClass="" action = "pre_register" id="pre_register" method = "post">
                                                <div><img src="img/logos/logo2_negro_peq.png"></div>
                                                <br/>
                                                <br/>                                                
                                                <h5> Antes de continuar con tu registro necesitamos confimar tu dirección de Correo Electrónico </h5><br/>
                                                <div class="col-md-5">
                                                    <label for="inputEmail" class="sr-only">Correo Electronico</label>
                                                    <s:textfield type = "email" cssClass="form-control" id="inputEmail" name = "u.correo" placeholder="boxgames@correo.com" required="required"></s:textfield>                                                    
                                                        <br/>                                                
                                                    <s:submit cssClass="btn btn-success btn-lg btn-block" type="submit" value="Enviar"></s:submit>
                                                </div>
                                            </s:form>
                                            
                                        </div>
                                    </div></center>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>     
        
        <script type="text/javascript">
            $('input[name="fechanac"]').daterangepicker({
                singleDatePicker: true,
                showDropdowns: true,
                opens: 'center'
            });
        </script>

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


