<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Alterar Cliente</title>
</head>
<body>
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
					<div class="sidebar_item" align="right">
						 
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
					<div class="sidebar_item" align="right">
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

            
                      <div style="margin-right: 60%;">


<a href="cadastro">Cadastro Cliente</a>&nbsp;&nbsp; &nbsp; 


<div style="margin-right: 60%;" style="text-align: center; color: red;"> ${remover} </div>

<table align="left" border='1' style='width: 100%;'>
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			<td>ID</td>
			<td>Nome</td>
			<td>Senha</td>
			<td>Email</td>
			<td>Data de Nascimento</td>
			<td>Celular</td>
			<td>Telefone</td>
			<td>CPF</td>
			<td>Ações</td>

			<c:forEach var="cliente" items="${listarCliente}">
				<tr>
					<td>${cliente.id}</td>
					<td>${cliente.nome}</td>
					<td>${cliente.senha}</td>
					<td>${cliente.email}</td>
					<td><fmt:formatDate value="${cliente.dataNascimento}" pattern="dd/MM/yyyy" /></td>
					<td>${cliente.celular}</td>
					<td>${cliente.telefone}</td>
					<td>${cliente.cpf}</td>

					<td>&nbsp;<a href="removerCliente?id=${cliente.id}">Remover</a>
						&nbsp;<a href="exibirAlterarCliente?id=${cliente.id}">Alterar</a>
					</td>
			</c:forEach>
	</table>

</div>
</body>
</html>