<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Clean Max - Cadastro</title>

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

<script type="text/javascript">
	jQuery(function($) {
		$("#inputDataNascimento").mask("99/99/9999");
		$("#inputCpf").mask("999.999.999-99");
	});
</script>
</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

			
						<a href="view/telaInicial/Index.jsp">Clean<span class="logo_colour">Max</span></a>

					</h1>
					<h2>Clean Max WebSite</h2>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li><a href="apresentacao">Home</a></li>
					<li class="selected"><a href="cadastro">Cadastro</a></li>
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
						 
						<h3>Últimas Notícias</h3>
						<h4>Novo WebSite</h4>
						<h5>27 de Junho de 2017</h5>
						<p>
							Testando WebSite<br /> <a href="#">Leia Mais</a>
						</p>
					</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h3>Links</h3>
						<ul>
							<li><a href="#">Serviço 1</a></li>
							<li><a href="#">Serviço 2</a></li>
							<li><a href="#">Serviço 3</a></li>
							<li><a href="#">Serviço 4</a></li>
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
									value="Insira as palavras..." /> <input name="search"
									type="image" style="border: 0; margin: 0 0 -9px 5px;"
									src="view/style/search.png" alt="Search" title="Search" />
							</p>
						</form>
					</div>
					<div class="sidebar_base"></div>
				</div>
			</div>
  

<form action="login" method="post" enctype="multipart/form-data">

<h1><input name="search" type="image"
					style="border: 0; margin: 0 0 -9px 5px;"
						src="view/style/login.png" width="600" height="400"
					alt="Search" title="Search" /></h1>
<p>
<div class="form-group">
<label for="inputNome">Usuário:</label>
<input type="text" id="inputNome" class="form-control" name="nome" style="width: 500px;" maxlength="100" required="required" />
</div>
<p>
</p>
<p>
<div class="form-group">
<label for="inputSenha">Senha:</label>
<input type="text" id="inputSenha" class="form-control" name="senha" style="width: 500px;" maxlength="100" required="required" />
</div>

<button type="submit" class="btn btn-primary"> &nbsp; Entrar &nbsp;
</button>
 
</form>
</body>
</html>