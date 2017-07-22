package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	
	@RequestMapping("/login")
	public String LoginCliente() {
		
		return "login/login";
}

   @RequestMapping("/home")
   public String TelaInicial() {
	
	return "telaInicial/Index";
}
}
