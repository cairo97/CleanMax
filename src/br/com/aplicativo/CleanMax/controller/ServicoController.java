package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class ServicoController {
	@RequestMapping("/servico")
	public String Servico() {

		return "servico/servico";
	}
}