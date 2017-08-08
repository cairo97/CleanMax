<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="view/style/style.css" />
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="view/js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="view/js/jquery.maskedinput.js"></script>
</head>
<body>

               <center>
                            <a href="home">Home</a>&nbsp;&nbsp; |&nbsp;
                          
                            
						<a href="veiculo">Incluir tipo Veículo</a>&nbsp;&nbsp; |&nbsp;
					    <a href="funcao">Incluir Funcão</a>&nbsp;&nbsp; |&nbsp;
						<a href="listarTipoServico">Listar tipo servico</a>
               
                <div style="text-align: center; color: red;"> ${servico} </div>
               
        <form action="incluirTipoServico" method="post"enctype="multipart/form-data">
        
					<h1>Cadastro de tipo de Serviço</h1>
					
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