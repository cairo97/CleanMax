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

      <a href="tipoServico">Incluir Tipo Servico</a>                 
	
	<hr>
	<h3>Listar tipo de servico</h3>
	<hr>
	

	<table border="1" style="width: 100%">
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			
			<td>Descrição</td>
			<td>Acões</td>
			
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
	
</body>
</html>