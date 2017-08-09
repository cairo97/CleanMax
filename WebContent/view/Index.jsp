<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>

<a href="cadastro">Incluir Cliente</a> &nbsp;
<br/> <br/> <br/>
<a href="logout">Logout</a>
<p >
Informe seu login e senha para acessar o sistema.
</p>
<div style="color: red;" align="center"> <h3> ${msg} </h3> </div>
<p>
<form action="efetuarLogin" method="post">
Login: <br />
<input type="text" name="login" required="required" />
<br /> <br />
Senha: <br />
<input type="password" name="senha" required="required" />
<br /><br />
<input type="submit" value="Entrar" />
</form>
</p>

</body>
</html>