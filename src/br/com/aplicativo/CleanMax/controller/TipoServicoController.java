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
	public String incluirTipoServico(TipoServico tipoServico, Model model) {

		TipoServicoDao dao = new TipoServicoDao();
		dao.salvar(tipoServico);
		model.addAttribute("servico", "Serviço cadastrado realizado com sucesso");

		return "forward:listarTipoServico";
	}

	@RequestMapping("listarTipoServico")
	public String listarTipoServico(Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		model.addAttribute("listarTipoServico", dao.listar());
		return "servico/listarTipoServico";
	}

	@RequestMapping("removerTipoServico")
	public String removerTipoServico(TipoServico tipoServico, Model model) {
		TipoServicoDao dao = new TipoServicoDao();
		dao.remover(tipoServico);
		model.addAttribute("remover", "Servico Removido com Sucesso");
		return "forward:listarTipoServico";
	}

	@RequestMapping("exibirAlterarTipoServico")
	public String alterarTipoServico(TipoServico tipoServico, Model model) {

		TipoServicoDao dao = new TipoServicoDao();
		TipoServico servicoCompleto = dao.buscarPorId(tipoServico.getId());

		model.addAttribute("servico", servicoCompleto);

		return "servico/alterarTipoServico";
	}

	@RequestMapping("/alterarTipoServico")
	public String alteraTipoServico(TipoServico tipoServico, Model model) {

		TipoServicoDao dao = new TipoServicoDao();
		dao.alterarTipoServico(tipoServico);
		model.addAttribute("mensagem", "Servico Alterado com Sucesso!");

		return "forward:listarTipoServico";

	}


}
