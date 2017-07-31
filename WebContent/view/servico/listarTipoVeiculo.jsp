<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Veículos</title>

<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 1%;">


        <div style="text-align: center; color: red;"> ${remover} </div> 
                        <a href="veiculo">Incluir Veículo</a>
	
	<div style="text-align: center; color: red;"> ${veiculo} </div>
	<hr>
	<h3>Listar Veículo</h3>
	<hr>
	

	<table border="1" style="width: 100%">
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			
			<td>Descrição</td>
			<td>Acões</td>
			
		</tr>
		
		<c:forEach var="veiculo" items="${listarVeiculo}">
			<tr>
				<td>${veiculo.descricao}</td>
					<td>
					<a href="removerVeiculo?id=${veiculo.id}">Remover</a> &nbsp;
					<a href="exibirAlterarVeiculo?id=${veiculo.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>