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

					<a href="home">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li class="selected"><a href="telaIncial">Home</a></li>

					
						<li><a href="cadastro">Cadastro</a>
									
									</li>
									
									<li><a href="agendar">Agendar Servi�o</a></li>

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
							<li><a href="servico">Incluir Servi�o</a></li>
							<li><a href="veiculo">Incluir tipo de ve�culo</a></li>
							<li><a href="tipoServico">Incluir tipo de servi�o</a></li>
							<li><a href="funcao">Incluir Fun��o</a></li>
							
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
      <a href="tipoServico">Incluir Tipo Servico</a>                 

	
	<hr>
	<h3>Listar tipo de servico</h3>
	<hr>
	

	<table border="1" style="width: 100%">
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			
			<td>Descri��o</td>
			<td>Ac�es</td>
			
		</tr>
		
		<c:forEach var="servico" items="${listarTipoServico}">
			<tr>
				<td>${servico.descricao}</td>
					<td>
					<a href="removerTipoServico?id=${servico.id}">Remover</a> &nbsp;
					<a href="exibirAlterarTipoServico?id=${servico.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
</html>