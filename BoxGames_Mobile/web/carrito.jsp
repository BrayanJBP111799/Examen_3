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
			<a href="#" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
		</div>

                <!------------------------------------------------- BODY ------------------------------------------------------>
		<div data-role="main" class="ui-content jqm-content jqm-fullwidth">

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
					<a rel="external" href="juegos.jsp">Juegos</a>
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

