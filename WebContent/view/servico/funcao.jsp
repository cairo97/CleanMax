<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir Funcao</title>
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

<script type="text/javascript">
	jQuery(function($) {
		$("#inputDataNascimento").mask("99/99/9999");
		$("#inputCpf").mask("999.999.999-99");
		$("#inputCelular").mask("(99)9999-9999");
		$("#inputTelefone").mask("(99) 9999-9999");
	});
</script>
</head>
<body> 
<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

			
						<a href="view/telaInicial/Index.jsp">Clean<span class="logo_colour">Max</span></a>

				
					<h1>Lava Jato  Clean Max</h1>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li><a href="apresentacao">Home</a></li>
					
					
					<li class="selected"><a href="cadastro">Cadastro</a></li>
					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		
					</div>
					<div class="sidebar_base"></div>			          
                      <center  >
                            
                             <a href="apresentacao">Home</a>&nbsp;&nbsp; |&nbsp;
                         <a href="tipoServico">Incluir tipo Serviço</a>&nbsp;&nbsp; |&nbsp;
                            
						<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="funcao">Incluir Funcão</a>&nbsp;&nbsp;|&nbsp;
						<a href="listarFuncao">Listar Funcão</a>
						
	<div style="text-align: center; color: red;">${funcao}</div>
	


		<form  action="incluirFuncao" method="post" enctype="multipart/form-data">
		
     <form:errors path="funcao.descricao" cssStyle="color:red" />

			<h1>Cadastro de função</h1>
			<div class="form_settings">
				<p>
					<span><center>Descrição:</center> </span><input class="contact"
						type="text" name="descricao" value="" required="required" />
				</p>
			</div>
		

		&nbsp;
		<button type="submit" class="btn btn-primary">&nbsp; Salvar
			&nbsp;</button>
			
			</form>
	</center>
</body>
</html>