package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Funcao;
import br.com.aplicativo.CleanMax.model.FuncaoDao;



@Controller
public class FuncaoController {
   
	@RequestMapping("/funcao")
	public String Funcao() {
		
		return "servico/funcao";
}

	@RequestMapping("incluirFuncao")
	public String incluirFuncao(Funcao funcao, Model model) {
		

		FuncaoDao dao = new FuncaoDao();
		dao.salvar(funcao);
		model.addAttribute("funcao", "Funcao cadastrada realizado com sucesso");
		
		return "forward:funcao";

	}
	
	
	@RequestMapping("listarFuncao")
	public String listarFuncao(Model model) {
		FuncaoDao dao = new FuncaoDao();
		model.addAttribute("listarFuncao", dao.listar());
		return "servico/listarFuncao";
	}
}
