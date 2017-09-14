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
<link rel="stylesheet" type="text/css" href="view/style/cascata.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
   
 <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>

  

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

					
					
                  <li><a href="tabelaPreco">Preços</a></li>

					<li><a>Bem vindo  ${funcionarioLogado.nome}</a></li>
                    <li><a href="logout">Sair</a></li>

				</ul>

				
			</div>
		</div>
		<div id="content_header"></div>
		<div class="container">
		<br>
		
		
		   
		 <center  >
                      

  <form>
    <div class="form-group">
    
    
    <h3>Administrador</h3>
    


    <input name="search" type="image"
					style="border: 0; margin: 0 0 -9px 5px;"
						src="view/style/administrador.png" width="150" height="150"
					alt="Search" title="Search" />
					



					
    <br>
      <label for="sel1">Escolha Seu Serviço:</label>
      <select class="form-control" id="sel1"  style="width: 200px" onchange="location = this.value;">     
 
        <optgroup label="Alterações no Cliente">
         <option value= # selected="selected">Nenhum</option>
  <option  value= cadastro>Incluir Cliente  </option>
  <option  value= listarCliente>Listar Todos Clientes  </option>
 
  </optgroup>
      
        <optgroup label="Função de Funcionário">
    <option  value= funcao >Cadastrar Funcão </a> </option>
   <option  value= listarFuncao >Listar Todas Funções </a> </option>
  </optgroup>
  
      <optgroup label="Alterações no Funcionário">
     <option  value= cadastroFuncionario >Cadastrar Funcionario </a> </option>
   <option  value= listarFuncionario >Listar Todos Funcionario </a> </option>
  </optgroup>
  
      <optgroup label="Alterações no Serviço">
    <option  value= servico >Cadastrar um Serviço </a> </option>
   <option  value= listarServico >Listar Todos Serviços </a> </option>
  </optgroup>
  
    <optgroup label="Alterações no Tipo de Serviço">
    <option  value= tipoServico >Cadastrar Tipo de Serviço </a> </option>
   <option  value= listarTipoServico >Listar Todos Tipos de Serviços </a> </option>
  </optgroup>
  
   <optgroup label="Alterações no Tipo de Veiculo">
    <option  value= veiculo >Cadastrar Tipo de Veiculo </a> </option>
   <option  value= listarTipoVeiculo >Listar Todos Tipos de Veiculo </a> </option>
  </optgroup>
  
        <optgroup label="Alterações na Lavagem">
 <option  value= agendar >Agendar Lavagem </option>
  <option value= listarAgendamento >Listar Lavagem</option>
  </optgroup>
 
 </select>
					

	
		
		</form>
		<p>
				<p>
			</div>
		</div>

		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="apresentacao">Home</a> | <a href="#">Acesso</a> | <a
					href="">Tabela De Preços</a> | <a
					href="">Cadastro de Usuário</a> | <a
					href="">Contato</a>
			</p>
			<p>Copyright &copy; Clean Max
		</div>
	</div>
</body>
</html>

		