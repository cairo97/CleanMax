<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="view/style/style.css" />
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>

<script type="text/javascript">
	jQuery(function($) {
		$("#inputDataNascimento").mask("99/99/9999");
		$("#inputCpf").mask("999.999.999-99");
	});
</script>

</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">

					<a href="home">Clean<span class="logo_colour">Max</span></a>
					
					
					<h1>Lava Jato  Clean Max</h1>
					
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<li class="selected"><a href="home">Home</a></li>
									<li><a href="cadastro">Cadastro de Cliente</a></li>
					<li><a href="#">Contato</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">
			
			<div id="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">

						<h3>Últimas Notícias</h3>
						<h4>Novo WebSite</h4>
						<h5>27 de Junho de 2017</h5>
						<p>
							Testando WebSite<br /> <a href="#">Leia Mais</a>
						</p>
					</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h3>Links Úteis</h3>
						<ul>
							<li><a href="servico">Incluir Serviço</a></li>
							<li><a href="veiculo">Incluir Veículo</a></li>
							<li><a href="funcao">Incluir Função</a></li>
							<li><a href="#">Serviço 4</a></li>
						</ul>
					</div>
					<div class="sidebar_base"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_top"></div>
					<div class="sidebar_item">
						<h3>Pesquisar</h3>
						<form method="post" action="#" id="search_form">
							<p>
								<input class="search" type="text" name="search_field"
									value="Insira as palavras." /> <input name="search"
									type="image" style="border: 0; margin: 0 0 -9px 5px;"
									src="view/style/search.png" alt="Search" title="Search" />
							</p>
						</form>
					</div>
					<div class="sidebar_base"></div>
				</div>
			</div>
			<div id="content">
			
			
			<center>
      <form action="login" method="post" enctype="multipart/form-data">

             <h1>Login</h1>
               <p>
               <div class="form-group">
               <label for="inputNome">Usuário:</label>
               <input type="text" id="inputNome" class="form-control" name="nome" style="width: 500px;" maxlength="100" required="required" />
               </div>
               <p>
                </p>
                <p>
                <div class="form-group">
                 <label for="inputSenha">Senha:</label>
               <input type="text" id="inputSenha" class="form-control" name="senha" style="width: 500px;" maxlength="100" required="required" />
               </div>

                 </p>


        <button type="submit" class="btn btn-primary"> &nbsp; Entrar &nbsp;
          </button>
           </center>
           
          

				
			</div>
		</div>
		 </form>
		<div id="content_footer"></div>
		<div id="footer">
			<p>
				<a href="view/telaInicial/Index.jsp">Home</a> | <a
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