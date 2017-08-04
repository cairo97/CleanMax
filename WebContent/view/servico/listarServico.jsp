<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Serviços</title>

<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 1%;">

                       
	
	<hr>
	<h3>Listar Servico</h3>
	<hr>
	
     
	<table border="1" style="width: 100%">
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			
			<td>Nome do Serviço:</td>
			<td>Tipo da Veículo:</td>
			<td>Tipo da Servico:</td>
			<td>Preço:</td>
			<td>Acões:</td>
			
		</tr>
		
		<c:forEach var="servico" items="${listarServico}">
			<tr>
			   
				<td>${servico.nome}</td>
				<td>${servico.tipoServico.descricao}</td>
				<td>${servico.tipoVeiculo.descricao}</td>
				<td>${servico.preco}</td>
				
					<td>
					<a href="removerServico?id=${servico.id}">Remover</a> &nbsp;
					<a href="exibirAlterarServico?id=${servico.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>