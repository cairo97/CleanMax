<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<!DOCTYPE HTML>
<html>

<head>
  <title>Clean Max</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="view/style/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Clean<span class="logo_colour">Max</span></a></h1>
          <h2>Clean Max </h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
         
          <li ><a href="apresentacao">Home</a></li>
          <li ><a href="telaIncial">Volta</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="banner"></div>
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
            <h3>Links Úteis</h3>
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
                <input class="search" type="text" name="search_field" value="Insira as palavras." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      
      
  
      
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
	
	
	
	
	
    </div>
    <div id="content_footer"></div>
    <div id="footer">
<<<<<<< HEAD
      <p><a href="apresentacao">Home</a> | <a href="#">Acesso</a> | <a href="tabeladeprecos.html">Tabela De PreÃ§os</a> | <a href="cadastro1.html">Cadastro de UsuÃ¡rio</a> | <a href="contato.html">Contato</a></p>
=======
      <p><a href="index.html">Home</a> | <a href="#">Acesso</a> | <a href="tabeladeprecos.html">Tabela De Preços</a> | <a href="cadastro1.html">Cadastro de Usuário</a> | <a href="contato.html">Contato</a></p>
>>>>>>> branch 'branch-1508' of https://github.com/cairo97/CleanMax.git
      <p>Copyright &copy; Clean Max | <a href="http://validator.w3.org/check?uri=referer">HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> |
    </div>
  </div>
</body>
</html>