<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="view/style/style.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>


</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

					<a href="apresentacao">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li><a href="apresentacao">Voltar para Tela Inicial</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">


			<div id="content">
				<div style="text-align: center; color: red;">${msg}</div>

				<center>
					<form action="efetuarLogin" method="post"
						enctype="multipart/form-data">

<input name="search" type="image"
					style="border: 0; margin: 0 0 -9px 5px;"
					left";"
						src="view/style/manutencao.jpg" width="600" height="400"
					alt="Search" title="Search" />


<p>
				<p>
			</div>
		</div>

		<div id="content_footer"></div>
		<div id="footer">
			<p>


				<a href="apresentacao">Home</a> | <a href="examples.html">Examples</a>
				| <a href="page.html">A Page</a> | <a href="cadastro1.html">Another
					Page</a> | <a href="contact.html">Contact Us</a> Copyright &copy; Clean
				Max
		</div>
	</div>
</body>
</html>

</body>
</html>