<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Box-Games</title>
        <link rel="icon" href="img/logos/dice.png">
        <link rel="stylesheet" type="text/css" href="css/onboarding.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css" rel="stylesheet">
    </head>
    <body>

    <center>

        <section class="container">        
            <section class="owlwrapper">
                <h4>¡Bienvenido a BoxGames!</h4>
                <div id="sync1" class="owl-carousel owl-theme">
                    <div class="item">
                        <img src="img/onboarding/onb1.png" alt="1.jpg" />
                        <div class="slide-text">
                            <h2>Todo en un mismo lugar.</h2>
                            <p>Visita la seccion de juegos para que puedas ver todos<br> los 
                                productos que tenemos disponibles.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/onboarding/onb2.png" alt="1.jpg" />
                        <div class="slide-text">
                            <h2>Juegos para todos.</h2>
                            <p>Escoge el que más te guste y añadelo al carrito.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/onboarding/onb3.png" alt="1.jpg" />
                        <div class="slide-text">
                            <h2>Realiza tu compra</h2>
                            <p>Completa tu pago, y empieza a divertirte.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/onboarding/onb4.png" alt="1.jpg" />
                        <div class="slide-text">
                            <h2>¿Necesitas ayuda?</h2>
                            <p>Puedes enviarnos un mensaje desde la seccion de Contacto<br/> y pronto te atenderemos</p>
                                <s:form  theme="simple" action="finish_onboarding" id="registration_form" method="post">
                                    <s:submit cssClass="btn btnBlue" type="submit" value="Continuar"></s:submit>
                                </s:form> 
                        </div>
                    </div>
                </div>

                <div class="owl-controls material-controls">
                    <div class="owl-nav">
                        <a class="btn-floating btn-large waves-effect grey lighten-2 owl-prev" title=""><i class="material-icons">arrow_back</i></a>
                        <a class="btn-floating btn-large waves-effect grey lighten-2 owl-next" title=""><i class="material-icons">arrow_forward</i></a>
                    </div>
                </div>

            </section>
        </section>
        
        <s:form  theme="simple" action="finish_onboarding" id="registration_form" method="post">
            <s:submit cssClass="btn btnBlue" type="submit" value="Saltar introduccion"></s:submit>
        </s:form> 

        <br/>
        <br/>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script type="text/javascript" src="js/onboarding.js">
        </script>

    </center>
</body>
</html>
