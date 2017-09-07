<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Conheça Nosso Sistema</title>
</head>
<title>Clean Max</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="view/style/style.css" />

</head>

<body>



	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="apresentacao">Lava <span class="logo_colour">Jato</span>
							Clean <span class="logo_colour"> Max</span></a>
					</h1>
					<h2>Clean Max</h2>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">


					<li><a href="agendar">Agendar Lavagem</a></li>
					<li><a href="tabelaPreco">Preços</a></li>

					<li><a>Bem vindo ${clienteLogado.nome} </a></li>


				</ul>
			</div>

		</div>




		<div id="content_header"></div>
		<div id="site_content">

			<table>
				<tr>
					<th>Nome</th>
					<th>Descrição</th>
					<th>Preço</th>
				</tr>
				<tr>
					<td>Lavagem Simples</td>
					<td>Lavagem Externa + Aspiração + Vidro + Painel + Pretinho + Brindes</td>
					<td>R$ 23,00</td>
				</tr>
				<tr>
					<td>Lavagem Completa</td>
					<td>Lavagem Externa + Por Baixo + Motor + Aspiração + Vidro + Painel + Pretinho + Brindes</td>
					<td>R$ 38,00</td>
				</tr>
				<tr>
					<td>Lavagem de Moto </td>
					<td>Lavagem + Aspiração + Polimento + Brindes </td>
					<td>R$ 20,00</td>
				</tr>
				<tr>
					<td>Higinização dos Bancos</td>
					<td>Lavagem + Aspiração + Aromatizante + Brindes </td>
					<td>R$ 45,00</td>
				</tr>
				<tr>
					<td>Revitalização de Farol</td>
					<td> Revestidos com uma fina camada de verniz + Polimento </td>
					<td>R$ 78,00</td>
				</tr>
				<tr>
					<td>Remoção de Arranhões</td>
					<td>Lavagem + Polimento1 + Polimento2 +  Brindes</td>
					<td>R$ 45,00</td>
				</tr>
			</table>

			<div id="imagem"></div>

			<div class="sidebar_item">


				<ul>

				</ul>
			</div>

		</div>


		<div class="sidebar_item"></div>

	</div>
	</div>









	<div id="content_footer"></div>
	<div id="footer">
		<p>
			<a href="apresentacao">Home</a> | <a href="#">Acesso</a> | <a
				href="tabeladeprecos.html">Tabela De Preços</a> | <a
				href="cadastro1.html">Cadastro de Usuário</a> | <a
				href="contato.html">Contato</a>
		</p>
		<p>Copyright &copy; Clean Max
	</div>
	</div>
</body>
</html>