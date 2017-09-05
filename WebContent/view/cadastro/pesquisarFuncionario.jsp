<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
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


  

</head>

<body>

		<div id="header">
			<div id="logo">
				<div id="logo_text">

					<a>Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
			
			
				<ul id="menu">

					<li ><a href="apresentacao">Tela Inicial</a></li>
							<li><a href="#">Contato</a></li>
							<li><a>Bem vindo, ${clienteLogado.nome} ${funcionarioLogado.nome}</a></li>
							<li><a href="logout">Sair</a></li>
							
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div class="container">
		<br>
		 <center  >

<a href="cadastroFuncionario">Cadastro Funcionario</a>&nbsp;&nbsp; &nbsp; 


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

			<c:forEach var="funcionario" items="${listarFuncionario}">
				<tr>
					<td>${funcionario.id}</td>
					<td>${funcionario.nome}</td>
					<td>${funcionario.senha}</td>
					<td>${funcionario.email}</td>
					<td><fmt:formatDate value="${funcionario.dataNascimento}" pattern="dd/MM/yyyy" /></td>
					<td>${funcionario.celular}</td>
					<td>${funcionario.telefone}</td>
					<td>${funcionario.cpf}</td>

					<td>&nbsp;<a href="removerFuncionario?id=${funcionario.id}">Remover</a>
						&nbsp;<a href="exibirAlterarFuncionario?id=${funcionario.id}">Alterar</a>
					</td>
			</c:forEach>
	</table>

</body>
</html>