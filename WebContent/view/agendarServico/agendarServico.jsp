<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Clean Max - Agendamento</title>
<meta charset="utf-8" />
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

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>
<script>
	$(function() {
		$("#calendario").datepicker();
	});
</script>

<script type="text/javascript">
	jQuery(function($) {
		$("#inputHora").mask("99.99");
	});
</script>
</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">


					<a href="view/telaInicial/Index.jsp">Clean<span
						class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li><a href="home">Home</a></li>


					<li><a href="cadastro">Cadastro</a></li>
					
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
							<li><a href="servico">Incluir Serviço</a></li>
							<li><a href="veiculo">Incluir tipo de veículo</a></li>
							<li><a href="tipoServico">Incluir tipo de serviço</a></li>
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
									value="Insira as palavras..." /> <input name="search"
									type="image" style="border: 0; margin: 0 0 -9px 5px;"
									src="view/style/search.png" alt="Search" title="Search" />
							</p>
						</form>
					</div>
					<div class="sidebar_base"></div>
				</div>
			</div>
			<div id="content">

				<div style="text-align: center; color: green;">${cadastrar}</div>

				<h1>Agendamento</h1>




				<div class="form_settings">
					<form action="incluirAgendamento" method="post"
						enctype="multipart/form-data">

						<p>
						<p>
							<label>Data do Agendamento: </label><br>
							<input type="date" id="calendario" name="data" />
						</p>

						<form action="valor" method="post"
						enctype="multipart/form-data">
					
						<div class="form-group">
							<label for="veiculo">Tipo da Veículo:</label> <select
								style="width: 300px;" maxlength="100" class="form-control"
								id="tipoVeiculo" name="tipoVeiculo">
								<option value="">Selecione</option>
								<c:forEach items="${listarTipoVeiculo}" var="obj">
									<option value="${obj.id}">${obj.descricao}</option>
								</c:forEach>

							</select>
						</div>

						<div class="form-group">
							<label for="tipoServico">Tipo da Serviço:</label> <select
								style="width: 300px;" maxlength="100" class="form-control"
								id="tipoServico" name="tipoServico">
								<option value="">Selecione</option>
								<c:forEach items="${listarTipoServico}" var="obj">
									<option value="${obj.id}">${obj.descricao}</option>
								</c:forEach>
							</select>
						</div>
						
						<button style="background:#18B500" type="submit" class="btn btn-primary">&nbsp;
							Valor &nbsp;</button>
							
						<p>
						<label>Preço:</label> <br>
							<input style="background:#8FFB7E" type="text" style="width: 100px;" id="inputPreco" name="preco" value =""/>
						</p>
						
					</form>
						
						<p>
							<label>Hora do Agendamento:</label> <br>
							<input type="text" style="width: 100px;" id="inputHora" name="hora" />
						</p>

						


						<a href="view/telaInicial/Index.html" class="btn btn-danger"
							role="button">Cancelar</a> &nbsp;
						<button type="reset" class="btn btn-default">&nbsp;
							Limpar &nbsp;</button>
						&nbsp;
						<button type="submit" class="btn btn-primary">&nbsp;
							Agendar Serviço &nbsp;</button>
					</form>
				</div>
			</div>
		</div>




		<div id="content_footer"></div>
		<div id="footer">

			<p>
				<a href="view/telaInicial/Index.html">Home</a> | <a
					href="examples.html">Exemplos</a> | <a href="page.html">Pagina</a>
				| <a href="cadastroCliente.html">Cadastro</a> | <a
					href="contact.html">Contato</a>
			</p>
			<p>
				Copyright &copy; Clean Max | <a
					href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a
					href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> |
		</div>
	</div>
</body>
</html>
