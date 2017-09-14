<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


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


					<a href="telaIncial">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">


					<li><a href="#">Contato</a></li>
					<li><a href="apresentacao">Voltar</a></li>
					<li><a href="logout">Sair</a></li>

				</ul>
			</div>

		</div>


		<div id="content_header"></div>

		<div id="site_content">

			<div id="sidebar_container">

				<div class="sidebar"></div>

				<div id="sidebar_container"></div>


			</div>



			<center>
				<div style="text-align: center; color: green;">${agendamento1}</div>
				<h1>Listar Lavagens</h1>
			</center>
			<table border='1' style='width: 100%;'>
				<tr style='background-color: #E6E6E6; font-weight: bold;'>
					<td>Serviço</td>
					<td>Preço</td>
					<td>Data</td>
					<td>Horário</td>
					<td>Placa</td>
					<td>Status</td>
					<td>Acões</td>


					<c:forEach var="agendar" items="${lavagemCliente}">
						<tr>


							<td>${agendar.servico.nome}</td>
							<td>${agendar.servico.preco}</td>
							<td><fmt:formatDate value="${agendar.data}"
									pattern="dd/MM/yyyy" /></td>
							<td>${agendar.hora}</td>
							<td>${agendar.placa}</td>
							<td>${agendar.status}</td>

							<td>&nbsp;<a href="removerAgendamentoCli?id=${agendar.id}">Remover</a>
								&nbsp;<a href="exibirAlterarCliente?id=${agendar.id}">Alterar</a>
							</td>
					</c:forEach>
			</table>
</body>
</html>