<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<title>Alterar Serviço</title>
</head>
<body>
	
	<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="servico">Incluir Serviço</a>&nbsp;&nbsp; |&nbsp;
						<a href="listarServico">Listar servico</a>
	
	
	<div style="text-align: center; color: green;">${mensagem}</div>

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
</body>
</html>