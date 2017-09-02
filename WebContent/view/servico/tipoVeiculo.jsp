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
<body>

<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

					<a href="apresentacao">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li class="selected"><a href="apresentacao">Home</a></li>

					
						<li><a href="cadastro">Cadastro</a>
									
									</li>
									
									<li><a href="agendar">Agendar Serviço</a></li>

					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		
					</div>
					<div class="sidebar_base"></div>
			

              <center>
               <a href="apresentacao">Home</a>&nbsp;&nbsp; |&nbsp;
               <a href="tipoServico">Incluir tipo Serviço</a>&nbsp;&nbsp; |&nbsp;
                            
						<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="funcao">Incluir Funcão</a>&nbsp;&nbsp; |&nbsp;
					    <a href="listarTipoVeiculo">Listar Veiculo</a>
              
              
              <div style="text-align: center; color: red;"> ${veiculoMensagem} </div>
                
        <form action="incluirVeiculo" method="post" enctype="multipart/form-data">
    
            
              <form:errors path="tipoVeiculo.descricao" cssStyle="color:red" />
					<h1>Cadastro de tipo de Veículo</h1>
					
					
					<div class="form_settings">
						<p>
                      <span><center>Descrição:</center>  </span><input class="contact" type="text" name="descricao" value="" required="required" />
						</p>
						</div>
		
		
		&nbsp;
						<button type="submit" class="btn btn-primary">&nbsp; Salvar &nbsp;</button>
                </form>
                
                </center>
</body>
</html>