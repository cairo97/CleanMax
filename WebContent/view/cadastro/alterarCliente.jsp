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
<title>Alterar Cliente</title>
</head>
<body>
	
	<div style="text-align: center; color: green;">${mensagem}</div>

	<hr>
	<h3>Alterar Cliente</h3>
	<hr>
	<table>
		<jsp:useBean id="dao"
			class="br.com.aplicativo.CleanMax.model.ClienteDao" />

	</table>

	<form action="alterarCliente" method="post" enctype="multipart/form-data">

		<input type="hidden" name="id" value="${cadastro.id}" />

		<div class="form-group">
			<label for="inputNome">Nome</label> <input type="text" id="inputNome"
				class="form-control" name="nome" style="width: 200px;"
				maxlength="100" required="required" value="${cadastro.nome}" />
		</div>

		<div class="form-group">
			<label for="inputSenha">Senha</label> <input type="text"
				id="inputSenha" class="form-control" name="senha"
				style="width: 500px;" maxlength="500" required="required"
				value="${cadastro.senha}" />
		</div>

		<div class="form-group">
			<label for="inputEmail">Email</label> <input type="text"
				id="inputEmail" class="form-control" name="email"
				style="width: 200px;" maxlength="100" required="required"
				value="${cadastro.email}" />
		</div>

		<div class="form-group">
			<label for="inputDataNascimento">Data de Nascimento</label> <input
				type="text" id="inputDataNascimento" class="form-control"
				name="dataNascimento" style="width: 200px;" maxlength="100"
				required="required"
				value="<fmt:formatDate value="${cadastro.dataNascimento}" pattern="dd/MM/yyyy" />" />
		</div>

		<div class="form-group">
			<label for="inputCelular">Numero de Celular </label> <input
				type="text" id="inputCelular" class="form-control" name="celular"
				style="width: 200px;" maxlength="100" required="required"
				value="${cadastro.celular}" />
		</div>

		<div class="form-group">
			<label for="inputTelefone">Numero de Telefone </label> <input
				type="text" id="inputTelefone" class="form-control" name="telefone"
				style="width: 200px;" maxlength="100" required="required"
				value="${cadastro.telefone}" />
		</div>

		<div class="form-group">
			<label for="inputCpf">Numero do CPF </label> <input type="text"
				id="inputCpf" class="form-control" name="cpf" style="width: 200px;"
				maxlength="100" required="required" value="${cadastro.cpf}" />
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