package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.TipoServico;
import br.com.aplicativo.CleanMax.model.TipoServicoDao;


@Controller
public class TipoServicoController {
	@RequestMapping("/servico")
	public String Servico() {

		return "servico/tipoServico";
	}

	@RequestMapping("incluirServico")
	public String incluirServico(TipoServico servico, Model model) {
		

		TipoServicoDao dao = new TipoServicoDao();
		dao.salvar(servico);
		model.addAttribute("servico", "Servi�o cadastrado realizado com sucesso");
		
		return "forward:servico";
}
	
	
	@RequestMapping("listarServico")
	public String listarServico(Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		model.addAttribute("listarServico", dao.listar());
		return "servico/listarServico";
	}
}