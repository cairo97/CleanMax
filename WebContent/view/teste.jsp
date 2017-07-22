


<html>

<head>
  <title>Clean Max - Cadastrar Serviço</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Clean<span class="logo_colour">Max</span></a></h1>
          <h2>Clean Max WebSite</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="index.html">Home</a></li>
          <li><a href="#">Exemplos</a></li>
          <li><a href="#">Página</a></li>
          <li class="selected"><a href="cadastro1.html">Cadastro</a></li>
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
            <!-- insert your sidebar items here -->
            <h3>Últimas Notícias</h3>
            <h4>Novo WebSite</h4>
            <h5>27 de Junho de 2017</h5>
            <p>Testando WebSite<br/><a href="#">Leia Mais</a></p>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Links</h3>
            <ul>
              <li><a href="#">Serviço 1</a></li>
              <li><a href="#">Serviço 2</a></li>
              <li><a href="#">Serviço 3</a></li>
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
                <input class="search" type="text" name="search_field" value="Insira as palavras..." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
       <div style="text-align: center; color: red;"> ${cadastrar} </div>
      <div id="content">
        <!-- insert the page content here -->
        
       <h1>Cadastro</h1>
					<div class="form_settings">
						<form action="incluirCliente" method="post" enctype="multipart/form-data">
						<p>
							<span>Nome</span><input class="contact" type="text" name="nome"
								value="" required="required" />
						</p>
						<p>
							<span>Senha</span><input class="contact" type="password"
								name="senha" value="" required="required" />
						</p>
						<p>
							<span>Confirmar Senha</span><input class="contact"
								type="password" name="" value="" required="required" />
						</p>
						<p>
							<span>Email</span><input class="contact" type="text" name="email"
								value="" required="required" />
						</p>
						<p>
							<span>Data de Nascimento</span><input class="contact" type="text"
								id="inputDataNascimento" name="dataNascimento" value="" required="required" />
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

					
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_cadastrar" value="Cadastrar" /></p>
          </div> 
           
          </div>       
    </div>
    </div>
        </div>
        
                </form>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="examples.html">Exemplos</a> | <a href="page.html">Pagina</a> | <a href="cadastro1.html">Cadastro</a> | <a href="contact.html">Contato</a></p>
      <p>Copyright &copy; Clean Max | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | 
    </div>
  </div>
</body>
</html>