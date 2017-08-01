package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;
import br.com.aplicativo.CleanMax.model.TipoServico;
import br.com.aplicativo.CleanMax.model.TipoServicoDao;


@Controller
public class TipoServicoController {
	@RequestMapping("/tipoServico")
	public String Servico() {

		return "servico/tipoServico";
	}

	@RequestMapping("incluirServico")
	public String incluirServico(TipoServico servico, Model model) {
		

		TipoServicoDao dao = new TipoServicoDao();
		dao.salvar(servico);
		model.addAttribute("servico", "Servico cadastrado realizado com sucesso");
		
		return "forward:tipoServico";
}
	
	
	@RequestMapping("listarServico")
	public String listarServico(Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		model.addAttribute("listarServico", dao.listar());
		return "servico/listarTipoServico";
	}
	
	@RequestMapping("removerServico")
	public String removerServico(TipoServico servico, Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		dao.remover(servico);
		model.addAttribute("remover", "Servico Removido com Sucesso");
		return "forward:listarServico";
	}	
		
		@RequestMapping("exibirAlterarServico")
		public String alterarServico(TipoServico servico, Model model) {

			TipoServicoDao dao = new TipoServicoDao();
			TipoServico servicoCompleto = dao.buscarPorId(servico.getId());

			model.addAttribute("servico", servicoCompleto);

			return "servico/alterarTipoServico";
	    }
	    
	    @RequestMapping("/alterarServico")
	    public String alteraServico(TipoServico servico, Model model) {

	    	TipoServicoDao dao = new TipoServicoDao();
		dao.alterarServico(servico);
		model.addAttribute("mensagem", "Servico Alterado com Sucesso!");

		return "forward:listarServico";
		
		
	}

}
