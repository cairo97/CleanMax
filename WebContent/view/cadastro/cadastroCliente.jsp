<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Clean Max - Cadastro</title>

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
 <script>
                function validarSenha()
                    NovaSenha = document.FormSenha.senha.value;
                    NovaSenha = document.FormSenha.senha2.value;

                    if (senha != senha2) 
                        alert("SENHAS DIFERENTES!\\nFAVOR DIGITAR SENHAS IGUAIS");
            </script>
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

					<a href="home">Clean<span class="logo_colour">Max</span></a>


					<h1>Lava Jato Clean Max</h1>

				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li><a href="home">Login</a></li>
					<li><a href="contato">Contato</a></li>
					<li><a href="apresentacao">Pagina Inicial</a></li>
					
					<li><a href="logout">Sair</a></li>
							
				</ul>
			</div>
		</div>
		
		
		<div id="content_header"></div>
		
		<div id="site_content">
		
		

			<div id="sidebar_container">
				
				
				
				<div class="sidebar">
					
					
				</div>
			</div>
						
			<div id="content">

				<div style="text-align: center; color: green;">${cadastrar}</div>



                  <div>
				<input name="search" type="image"
							style="border: 0; margin: 0 0 -9px 5px;"
							src="view/style/cadastro.png" width="400" height="150" alt="Search"
							title="Search" /><br> <br>

				<div class="form_settings">
					<form action="incluirCliente" method="post" id="FormSenha" name="FormSenha">

						

						<p>
							<span>Nome</span><input class="contact" type="text" name="nome"
								value="" />
						</p>
						<p>
							<span>Senha</span><input class="contact" type="password"
								name="senha" value="" required="required" />
						</p>
						<p>
							<span>Confirmar Senha</span><input class="contact"
								type="password" name="senha2" value="" required="required" />
						</p>
						<p>
							<span>Email</span><input class="contact" type="text" name="email"
								value="" required="required" />
						</p>
						<p>
							<span>Data de Nascimento</span><input class="contact" type="text"
								id="inputDataNascimento" name="dataNascimento" value=""
								required="required" />
						</p>
						<p>
							<span>Celular</span><input class="contact" type="text"
								name="celular" id="inputCelular" value="" required="required" />
						</p>
						<p>
							<span>Telefone</span><input class="contact" type="text"
								name="telefone" id="inputTelefone" value="" required="required" />
						</p>
						<p>
							<span>CPF</span><input class="contact" type="text" name="cpf"
								id="inputCpf" value="" required="required" />
						</p>
						
							
							 <a
							href="telaIncial" class="btn btn-danger"
							role="button">Cancelar</a> &nbsp;
						<button type="reset" class="btn btn-default">&nbsp;
							Limpar &nbsp;</button>
						&nbsp;
						<button type="submit" class="btn btn-primary" onClick="validarSenha()">&nbsp;
							Salvar &nbsp;</button>
							
							
					</form>
					</div>
					
					</div>
				</div>
			</div>
			
		</div>


					


		<div id="content_footer"></div>
		
		<div id="footer">
    
			<p>
				<a href="apresentacao">Home</a> | <a
					href="#">Exemplos</a> | <a href="apresentacao">Pagina</a>
				| <a href="cadastroCliente.html">Cadastro</a> | <a
					href="contact.html">Contato</a>
			</p>
			<p>
				Copyright &copy; Clean Max 		</div>
	</div>
</body>
</html>
