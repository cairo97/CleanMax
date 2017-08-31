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

					<a href="home">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li class="selected"><a href="telaIncial">Home</a></li>


					<li><a href="cadastro">Cadastro</a></li>

					<li><a href="agendar">Agendar Serviço</a></li>

					<li><a href="tabelaPreco">Tabela de Preço</a></li>
					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">


			<div id="content">


				<center>
					<form action="efetuarLogin" method="post"
						enctype="multipart/form-data">

						<h3>Informe seu login e senha para acessar o sistema.</h3>


						<h1>Login</h1>
						<p>
						<div class="form-group">
							<label for="inputEmail">E-mail:</label> <input type="text"
								id="inputEmail" class="form-control" name="email"
								style="width: 500px;" maxlength="100" required="required" />
						</div>
						<p>
						
						<div class="form-group">
							<label for="inputSenha">Senha:</label> <input type="password"
								id="inputSenha" class="form-control" name="senha"
								style="width: 500px;" maxlength="100" required="required" />
						</div>

						<p>
						
						<p>
						


							<button type="submit" class="btn btn-primary">&nbsp;
								Entrar &nbsp;</button>
								</center>
								<p>
						
						<p>
			</div>
		</div>
		
			<div id="content_footer"></div>
			<div id="footer">
				<p>


					<a href="view/telaInicial/Index.jsp">Home</a> | <a
						href="examples.html">Examples</a> | <a href="page.html">A Page</a>
					| <a href="cadastro1.html">Another Page</a> | <a
						href="contact.html">Contact Us</a> Copyright &copy; Clean Max
		
	</div>
	</div>
</body>
</html>

</body>
</html>