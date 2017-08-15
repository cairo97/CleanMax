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
			
			<div  style="margin-right: 50%;">

	<hr><h3>Alterar Função</h3><hr>
	
	
	
	<form action="alterarFuncao" method="post">

		<input type="hidden" name="id" value="${funcao.id}" />

	
		
	     <div class="form-group">
			<label for="inputDescricao">Descrição</label>
			<input type="text" id="inputDescricao" class="form-control" name="descricao" style="width: 200px;" maxlength="100" required="required" value="${funcao.descricao}" />
		</div>

		
		

		<br/><br/>

		<p> 
			<a href="listarFuncao" class="btn btn-danger" role="button">Cancelar</a> &nbsp;
			<button type="reset" class="btn btn-default"> &nbsp; Limpar &nbsp; </button> &nbsp;
			<button type="submit" class="btn btn-primary"> &nbsp; Alterar &nbsp; </button>
		</p>
	</form>
</div>
</body>
</html>