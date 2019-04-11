<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Box-Games</title>
        <link rel="stylesheet" type="text/css" href="css/onboarding.css">
    </head>
    <body>
        <div class="onboarding">
            <div class="slider">
                <div class="slide">
                    <h3>Todo en un mismo lugar.</h3>
<!--                           <img src="https://s9.postimg.org/i65ness8f/chat-bubbles.png" alt="chat bubbles"> -->
                    <div class="img chat-bubbles"></div>
                    <p>Visita la seccion de juegos para que puedas ver todos<br> los 
                        productos que tenemos disponibles.</p>
                </div>
                <div class="slide">
                    <h3>Juegos para todos.</h3>
<!--                           <img src="https://s9.postimg.org/7qzh5k2nz/swords.png" alt="swords"> -->
                    <div class="img swords"></div>
                    <p>Escoge el que más te guste y añadelo al carrito.</p>
                </div>
                <div class="slide">
                    <h3>Realiza tu compra</h3>
<!--                           <img src="https://s9.postimg.org/l7wfosv3j/brain-bulb.png" alt="brain bulb"> -->
                    <div class="img brain-bulb"></div>
                    <p>Completa tu pago, y empieza a divertirte.</p>
                </div>
                <div class="slide">
                    <h3>¿Necesitas ayuda?</h3>
<!--                           <img src="https://s9.postimg.org/i65ness8f/chat-bubbles.png" alt="chat bubbles"> -->
                    <div class="img chat-help"></div>
                    <s:form  theme="simple" action="finish_onboarding" id="registration_form" method="post">
                        <s:submit cssClass="btn-blueBG" type="submit" value="Continuar"></s:submit>
                    </s:form> 
                    <p>Puedes enviarnos un mensaje desde la sección de Contacto.</p>

                </div>
            </div>
            <div class="controls">
                <form>
                    <input type="radio" name="page" checked>
                    <label for="page"></label>
                    <input type="radio" name="page">
                    <label for="page"></label>
                    <input type="radio" name="page">
                    <label for="page"></label>
                    <input type="radio" name="page">
                    <label for="page"></label>
                </form>
                <a href="#" class="btn-next">Siguiente</a>
            </div>
        </div>

        <!-- <div class="thumbnail">
          <a href="https://codepen.io/enahom99/full/EEgPQP/">
            <img src="" alt="">
          </a>
        </div> -->

        <script type="text/javascript" src="js/onboarding.js"></script>
    </body>
</html>
