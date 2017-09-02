<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="view/style/style.css" />
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>
</head>
<body style="margin-left: 1%;">

	           <div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

			
						<a href="view/telaInicial/Index.jsp">Clean<span class="logo_colour">Max</span></a>

				
					<h1>Lava Jato  Clean Max</h1>
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
			
			<div  style="margin-right: 50%;">
	<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="servico">Incluir Serviço</a>&nbsp;&nbsp; |&nbsp;
						<a href="listarServico">Listar servico</a>
	
	
	<div style="text-align: center; color: green;">${servicoMensagem}</div>

	<hr>
	<h3>Alterar Serviço</h3>
	<hr>
	<table>
		<jsp:useBean id="dao"
			class="br.com.aplicativo.CleanMax.model.TipoServicoDao" />

	</table>

	<form action="alterarServico" method="post"
		enctype="multipart/form-data">

		<input type="hidden" name="id" value="${servico.id}" />

		<div class="form-group">
			<label for="inputNome">Nome:</label> <input type="text"
				id="inputNome" class="form-control" name="nome"
				style="width: 200px;" maxlength="100" required="required"
				value="${servico.nome}" />
		</div>


		
		<div class="form-group">
				<label for="inputTipoVeiculo">Tipo da Serviço:</label> <select
					style="width: 300px;" maxlength="100" class="form-control"
					id="inputTipoVeiculo" name="tipoVeiculo">
					<option value="selecione">Selecione</option>
					<c:forEach items="${listarTipoVeiculo}" var="obj">
						<option value="${obj.id}"<c:if test="${obj.id eq servico.tipoVeiculo.id}">selected="selected"</c:if>>
						${obj.descricao}</option>
					</c:forEach>
				</select>	
			</div>
		
		<div class="form-group">
				<label for="inputTipoServico">Tipo da Serviço:</label> <select
					style="width: 300px;" maxlength="100" class="form-control"
					id="tipoServico" name="tipoServico">
					<option value="selecione">Selecione</option>
					<c:forEach items="${listarTipoServico}" var="obj">
						<option value="${obj.id}"<c:if test="${obj.id eq servico.tipoServico.id}">selected="selected"</c:if>>
						${obj.descricao}</option>
					</c:forEach>
				</select>
			</div>
			
		<div class="form-group">
			<label for="inputPreco">preço:</label> <input type="text"
				id="inputPreco" class="form-control" name="preco"
				style="width: 200px;" maxlength="100" required="required"
				value="${servico.preco}" />
		</div>


		<br /> <br />

		<p>
			<a class="btn btn-danger" role="button">Cancelar</a> &nbsp;
			<button type="reset" class="btn btn-default">&nbsp; Limpar
				&nbsp;</button>
			&nbsp;
			<button type="submit" class="btn btn-primary">&nbsp; Alterar
				&nbsp;</button>
		</p>
	</form>
	
	</div>
</body>
</html>