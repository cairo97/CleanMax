package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.aplicativo.CleanMax.model.TipoServico;
import br.com.aplicativo.CleanMax.model.TipoServicoDao;


@Controller
public class TipoServicoController {
	
	@RequestMapping("/tipoServico")
	public String Servico() {

		return "servico/tipoServico";
	}

	@RequestMapping("incluirTipoServico")
	public String incluirTipoServico(TipoServico servico, Model model) {
		

		TipoServicoDao dao = new TipoServicoDao();
		dao.salvar(servico);
		model.addAttribute("servico", "Servico cadastrado realizado com sucesso");
		
		return "forward:tipoServico";
}
	
	
	@RequestMapping("listarTipoServico")
	public String listarTipoServico(Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		model.addAttribute("listarTipoServico", dao.listar());
		return "servico/listarTipoServico";
	}
	
	@RequestMapping("removerTipoServico")
	public String removerTipoServico(TipoServico servico, Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		dao.remover(servico);
		model.addAttribute("remover", "Servico Removido com Sucesso");
		return "forward:listarTipoServico";
	}	
		
		@RequestMapping("exibirAlterarTipoServico")
		public String alterarTipoServico(TipoServico servico, Model model) {

			TipoServicoDao dao = new TipoServicoDao();
			TipoServico servicoCompleto = dao.buscarPorId(servico.getId());

			model.addAttribute("servico", servicoCompleto);

			return "servico/alterarTipoServico";
	    }
	    
	    @RequestMapping("/alterarTipoServico")
	    public String alteraTipoServico(TipoServico servico, Model model) {

	    	TipoServicoDao dao = new TipoServicoDao();
		dao.alterarTipoServico(servico);
		model.addAttribute("mensagem", "Servico Alterado com Sucesso!");

		return "forward:listarTipoServico";
		
		
	}

}
