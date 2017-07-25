<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Produtos</title>

<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="margin-left: 1%;">

  
	
	<hr>
	<h3>Listar Produto</h3>
	<hr>
	

	<table border="1" style="width: 100%">
		<tr>
			
			<td>Descrição</td>
			
		</tr>
		
		<c:forEach var="veiculo" items="${listarVeiculo}">
			<tr>
				<td>${veiculo.descricao}</td>
					<td>
					<a href="removerProduto?id=${produto.id}">Remover</a> &nbsp;
					<a href="exibirAlterarProduto?id=${produto.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>