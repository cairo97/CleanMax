<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="view/style/style.css" />
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>
</head>
<body style="margin-left: 1%;">

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

					<li class="selected"><a href="telaIncial">Home</a></li>

					
						
									
									</li>
									
									

					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		
				
<center  >
                            
                    <a href="apresentacao">Home</a>&nbsp;&nbsp; |&nbsp;
                   <a href="telaIncial">Voltar</a>&nbsp; &nbsp;
						
			     
	<div  style="margin-right: 0%;">
	<hr>
	<h3>Listar Servico</h3>
	<hr>
	
     <div style="text-align: center; color: red;">${servicoMensagem}</div>
	<table border="1" style="width: 100%">
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			
			<td>Nome do Serviço:</td>
			<td>Tipo da Veículo:</td>
			<td>Tipo da Servico:</td>
			<td>Preço:</td>
			<td>Acões:</td>
			
		</tr>
		
		<c:forEach var="servico" items="${listarServico}">
			<tr>
			   
				<td>${servico.nome}</td>
				<td>${servico.tipoServico.descricao}</td>
				<td>${servico.tipoVeiculo.descricao}</td>
				<td>${servico.preco}</td>
				
					<td>
					<a href="removerServico?id=${servico.id}">Remover</a> &nbsp;
					<a href="exibirAlterarServico?id=${servico.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
</html>