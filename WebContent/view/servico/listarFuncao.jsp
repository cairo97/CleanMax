<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="view/style/style.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>
</head>
<body >



	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

					<a href="home">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li ><a href="telaIncial">Home</a></li>


					<li><a href="cadastro">Cadastro</a></li>

					<li><a href="agendar">Agendar Serviço</a></li>

					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
	
</div>   <center>
								          
                   
                            
                             <a href="telaIncial">Home</a>&nbsp;&nbsp; |&nbsp;
                         <a href="tipoServico">Incluir tipo Serviço</a>&nbsp;&nbsp; |&nbsp;
                            
						<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="funcao">Incluir Funcão</a>&nbsp;&nbsp;|&nbsp;
						<a href="listarFuncao">Listar Funcão</a>
	
	
	

		<div>

			<div style="text-align: center; color: red;">${funcao}</div>
			

			<h3>Listar tipo de funcão</h3>



			<table border="1" style="width: 100%">
				<tr style='background-color: #E6E6E6; font-weight: bold;'>

					<td>Descrição</td>
					<td>Acões</td>
				</tr>

				<c:forEach var="funcao" items="${listarFuncao}">
					<tr>
						<td>${funcao.descricao}</td>
						<td><a href="removerFuncao?id=${funcao.id}">Remover</a>
							&nbsp; <a href="exibirAlterarFuncao?id=${funcao.id}">Alterar</a>
						</td>
					</tr>
				</c:forEach>

			</table>

		</div>
	</center>
</body>
</html>