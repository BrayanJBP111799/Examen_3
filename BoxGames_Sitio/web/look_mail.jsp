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
                    <li><a href="login.jsp">Ingresar</a></li>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <li><a href="contacto.jsp">Contáctenos</a></li>
                    <li><a href="index.jsp#contenedor3">Juegos</a></li>
                    <li><a href="index.jsp">Inicio</a></li>
                </ul>
            </div>
        </header>
        
        <section class="contenedor-reg" id="contenedorRegistro">
            <div class="titulo">
                <h1 class="pt-4 pb-3">Envio de Correo</h1>
            </div>
            <div class="container">
                <div class="sign-in-body">
                    <center><form class="form-redirect" style="border:solid 3px #328BC3; border-radius:10px;">
                        <div><img src="img/logos/logo2_negro_peq.png"></div>
                        <h3 class="mb-3 font-weight-normal text-green">¡Se ha enviado un correo electrónico a tu cuenta!</h3>
                        <div class="col-md-5">
                        <center><img src="https://image.flaticon.com/icons/svg/204/204322.svg" width="128" height="128" alt="mail"></center>
                        <br><br>   
                        <h5 class="font-weight-normal">En caso de no recibir el correo, verifica que esté escrito correctamente e intenta de nuevo.</h5>
                        <div class="checkbox mb-3">
                            <center>
                                <a class="btn btn-success" style="margin: 20px auto; color:#fff;" onclick="location.href = 'pre_registro.jsp'">Regresar</a>    
                                <a href="index.jsp" class="btn btn-success">Volver al inicio</a>
                            </center>
                        </div>  
                        </div>
                    </form></center>
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



