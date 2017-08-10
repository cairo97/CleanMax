package br.com.aplicativo.CleanMax.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String incluirFuncao(@Valid Funcao funcao,BindingResult result, Model model) {
		
		if (result.hasErrors()) {
			return "forward:funcao";
			}

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
	
	@RequestMapping("exibirAlterarFuncao")
    public String exibirAlterarFuncao(Funcao funcao, Model model) {

	FuncaoDao dao = new FuncaoDao();
	Funcao funcaoCompleto = dao.buscarPorId(funcao.getId());
	model.addAttribute("funcao", funcaoCompleto);

	return "servico/alterarFuncao";
    }
	
	 @RequestMapping("/alterarFuncao")
	    public String alterarFuncao(Funcao funcao, Model model) {

		 FuncaoDao dao = new FuncaoDao();
		dao.alterar(funcao);
		model.addAttribute("funcao", "Funcão Alterada com Sucesso!");

		return "forward:listarFuncao";
	    }

	 @RequestMapping("removerFuncao")
		public String removerFuncao(Funcao funcao, Model model) {
		 FuncaoDao dao = new FuncaoDao();
			dao.remover(funcao);
			model.addAttribute("funcao", "Funcão Removida com Sucesso");
			return "forward:listarFuncao";
		}
}
