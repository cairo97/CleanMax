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

					<a href="home">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
			
			
				<ul id="menu">

					<li ><a href="telaIncial">Home</a></li>
					<li><a href="agendar">Agendar lavagem</a></li>
							<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		
		<br>
		 <center  >
                            
                             <a href="telaIncial">Home</a>&nbsp;&nbsp; |&nbsp;
                         <a href="tipoServico">Incluir tipo Serviço</a>&nbsp;&nbsp; |&nbsp;
                            
						<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="funcao">Incluir Funcão</a>&nbsp;&nbsp;|&nbsp;
						<a href="listarFuncao">Listar Funcão</a>&nbsp;&nbsp;|&nbsp;
						<a href="servico">Listar Funcão</a>
						<a href="logout">Logout</a>
		
		
		<div id="site_content">

	

				<center>
					<p>Bem vindo, ${clienteLogado.nome}</p>

     <img src="<c:url value="view/imagens/clean1.png"/>" alt="descrição da imagem" />


	
		
		</form>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="telaIncial">Home</a> | <a
					href="examples.html">Examples</a> | <a href="page.html">A Page</a>
				| <a href="cadastro1.html">Another Page</a> | <a href="contact.html">Contact
					Us</a>
			</p>
			<p>
				Copyright &copy; Clean Max | <a
					href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a
					href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> |
		</div>
	</div>
</body>
</html>

</body>
</html>