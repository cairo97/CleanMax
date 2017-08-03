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
<title>Alterar Tipo de Serviço</title>
</head>
<body>
	<c:import url="../Index.jsp" />
	<div style="text-align: center; color: green;">${mensagem}</div>

	<hr>
	<h3>Alterar Tipo de Serviço</h3>
	<hr>
	<table>
		<jsp:useBean id="dao"
			class="br.com.aplicativo.CleanMax.model.TipoServicoDao" />

	</table>

	<form action="alterarTipoServico" method="post"
		enctype="multipart/form-data">

		<input type="hidden" name="id" value="${servico.id}" />

		<div class="form-group">
			<label for="inputDescricao">Descricao do Tipo de Serviço</label> <input type="text" id="inputDescricao"
				class="form-control" name="descricao" style="width: 200px;"
				maxlength="100" required="required" value="${servico.descricao}" />
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