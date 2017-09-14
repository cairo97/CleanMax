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

					<li><a href="apresentacao">Home</a></li>


					<li><a href="cadastro">Cadastro</a></li>

					<li><a href="acesso">Acesso</a></li>


					<li><a href="contato">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">


			<div id="content">
				<div style="text-align: center; color: red;">${msg}</div>

				


				<form action="efetuarLogin" method="post"
					enctype="multipart/form-data">

					<center>
						<input name="search" type="image"
							style="border: 0; margin: 0 0 -9px 5px;"
							src="view/style/login.png" width="140" height="150" alt="Search"
							title="Search" />


						<div class="form-group">
							<label for="inputEmail">E-mail:</label> <input type="text"
								id="inputEmail" class="form-control" name="email"
								style="width: 500px;" maxlength="100" required="required" />
						</div>


						<div class="form-group">
							<label for="inputSenha">Senha:</label> <input type="password"
								id="inputSenha" class="form-control" name="senha"
								style="width: 500px;" maxlength="100" required="required" />
						</div>
						<a href="manuntencao" id="posicao2">Alterar Senha</a> <br> <br>
					</center>

					<button type="submit" class="btn btn-primary" id="posicao1">&nbsp;
						Entrar como Cliente &nbsp;</button>
					&nbsp;&nbsp;&nbsp;

					<button type="reset" class="btn btn-default" id="posicao">&nbsp;
						Limpar &nbsp;</button>
					&nbsp;&nbsp;&nbsp;
				</form>



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