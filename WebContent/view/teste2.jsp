<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="incluirCliente" method="post" enctype="multipart/form-data">
        <h1>Cadastro de Serviço</h1>
            <div class="form_settings">
            <p><span>Nome do Serviço</span><input class="contact" type="text" name="nome" value="" /></p>
	<p><span>Tipo de Veículo</span></p>
	<select name="tipodeveiculo" id="veiculo">
  	<option value="big">Grande</option>
  	<option value="mid">Médio</option>
  	<option value="small">Pequeno</option>
	</select></p>

	<p><span>Tipo de Serviço</span></p>
	<select name="tipodeserviço" id="serviço">
  	<option value="trp">Grande</option>
  	<option value="tpa">Médio</option>
  	<option value="tbn">Pequeno</option>
	</select></p>
        <p><span>Preço</span><input class="contact" type="number" name="preço" value="" /></p>
            
</body>
</html>