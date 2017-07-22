<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<title>Insert title here</title>
</head>
<body>
<c:import url="../Index.jsp"/>
	<div style="text-align: center; color: green;"> ${mensagem} </div>
	
	<hr>
	<h3>Incluir Cliente</h3>
	<hr>
	<table>
	<jsp:useBean id="dao" class="br.com.aplicativo.CleanMax.model.ClienteDao"/>
	
	<c:forEach var="produto" items="${listarCliente}">
	<tr>
		<td> Nome:</td>
		<td>${cadastro.Nome}</td>
		 
		</tr>
		</c:forEach>
</table>
	<form action="incluirCliente" method="post" enctype="multipart/form-data">
			
		<p>
			Email: <br /> <input type="text" name="email" />
		</p>
		<p>
			Data de Nascimento: <br /> <input type="text" name="dataNascimento" />
		</p>
		<p>
			Celular: <br /> <input type="text" name="celular" value="${cadastro.celular }" />
		</p>
		<p>
			Telefone: <br /> <input type="text" name="telefone" />
		</p>
		<p>
			Cpf: <br /> <input type="text" name="cpf" />
		</p>

		<p>
			<input type="submit" value="Inserir">
		</p>
		
	</form>
	
</body>
</html>