<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Incluir Servico</title>
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>

<script type="text/javascript">
	jQuery(function($) {
		$("#inputDataLancamento").mask("99/99/9999");
	});
</script>
</head>

<body>
	<center>
		<a href="servico">Incluir Serviço</a> <a href="veiculo">Incluir
			Veículo</a> <a href="funcao">Incluir Funcão</a>




		<hr>
		<h3>Incluir Serviço</h3>
		<hr>
		<form action="incluirServico" method="post"
			enctype="multipart/form-data">

			<div class="form-group">
				<label for="inputNome">Nome do Serviço:</label> <input type="text"
					id="inputNome" class="form-control" name="nome"
					style="width: 300px;" maxlength="100" required="required" />
			</div>

			<div class="form-group">
				<label for="tipoVeiculo">Tipo da Veículo:</label> <select
					style="width: 300px;" maxlength="100" class="form-control"
					id="tipoVeiculo" name="tipoVeiculo">
					<c:forEach items="${listarTipoVeiculo}" var="obj">
						<option value="${obj.id}">${obj.nome}</option>
					</c:forEach>
					
				</select>
			</div>

			<div class="form-group">
				<label for="tipoServico">Tipo da Serviço:</label> <select
					style="width: 300px;" maxlength="100" class="form-control"
					id="tipoServico" name="tipoServico">
					<option value="simples">Simples</option>
					<option value="completo">Completo</option>
				</select>
			</div>

			<div class="form-group">
				<label for="inputPreço">Preço:</label> <input type="text"
					id="inputPreco" class="form-control" name="preco"
					style="width: 300px;" maxlength="100" required="required" />
			</div>

			<a href="listarServico" class="btn btn-danger" role="button">Cancelar</a>
			&nbsp;
			<button type="reset" class="btn btn-default">&nbsp; Limpar
				&nbsp;</button>
			&nbsp;
			<button type="submit" class="btn btn-primary">&nbsp; Salvar
				&nbsp;</button>

		</form>
	</center>
</body>
</html>