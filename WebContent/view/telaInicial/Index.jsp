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

					
						<li><a href="cadastro">Cadastro</a>
									
									</li>
									
									<li><a href="agendar">Agendar Serviço</a></li>

					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">

			<div id="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">

						
					</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h3>Links</h3>
						<ul>
							<li><a href="servico">Incluir Serviço</a></li>
							<li><a href="veiculo">Incluir tipo de veiculo</a></li>
							<li><a href="tipoServico">Incluir tipo de servico</a></li>
							<li><a href="funcao">Incluir Função</a></li>

						</ul>
					</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h3>Pesquisar</h3>
						<form method="post" action="#" id="search_form">
							<p>
								<input class="search" type="text" name="search_field"
									value="Insira as palavras." /> <input name="search"
									type="image" style="border: 0; margin: 0 0 -9px 5px;"
									src="view/style/search.png" alt="Search" title="Search" />
							</p>
						</form>
					</div>
					<div class="sidebar_base"></div>
				</div>
			</div>
			<div id="content">


				<center>
					<form action="efetuarLogin" method="post"
						enctype="multipart/form-data">

						<p>Informe seu login e senha para acessar o sistema.</p>
						<div style="color: red;" align="center">
							<h3>${msg}</h3>
						</div>
						<p>
						<h1>Login</h1>
						<p>
						<div class="form-group">
							<label for="inputEmail">E-mail:</label> <input type="text"
								id="inputEmail" class="form-control" name="email"
								style="width: 500px;" maxlength="100" required="required" />
						</div>
						<p></p>
						<p>
						<div class="form-group">
							<label for="inputSenha">Senha:</label> <input type="password"
								id="inputSenha" class="form-control" name="senha"
								style="width: 500px;" maxlength="100" required="required" />
						</div>

						</p>


						<button type="submit" class="btn btn-primary">&nbsp;
							Entrar &nbsp;</button>
				</center>


</form>

			</div>
		</div>
		
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="view/telaInicial/Index.jsp">Home</a> | <a
					href="examples.html">Examples</a> | <a href="page.html">A Page</a>
				| <a href="cadastro1.html">Another Page</a> | <a href="contact.html">Contact
					Us</a>
			</p>
			<p>
				Copyright &copy; Clean Max | <a
					href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a
					href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> |
		</div>
	</div>
</body>
</html>

</body>
</html>