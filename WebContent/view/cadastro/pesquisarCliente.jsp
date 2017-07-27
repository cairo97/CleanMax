<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>Pesquisar Cliente</title>
</head>
<body>

<c:import url="../Index.jsp"/>

<div style="text-align: center; color: red;"> ${remover} </div>

<table border='1' style='width: 100%;'>
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
					<td>${cliente.dataNascimento}</td>
					<td>${cliente.celular}</td>
					<td>${cliente.telefone}</td>
					<td>${cliente.cpf}</td>

					<td>&nbsp;<a href="removerCliente?id=${cliente.id}">Remover</a>
						&nbsp;<a href="exibirAlterarCliente?id=${cliente.id}">Alterar</a>
					</td>
			</c:forEach>
	</table>

</body>
</html>