package br.com.aplicativo.CleanMax.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Servico;
import br.com.aplicativo.CleanMax.model.ServicoDao;
import br.com.aplicativo.CleanMax.model.TipoServico;
import br.com.aplicativo.CleanMax.model.TipoServicoDao;
import br.com.aplicativo.CleanMax.model.TipoVeiculo;
import br.com.aplicativo.CleanMax.model.TipoVeiculoDao;

@Controller
public class ServicoController {

	@RequestMapping("/servico")
	public String servico(Model model) {

		TipoVeiculoDao dao = new TipoVeiculoDao();
		List<TipoVeiculo> listarTipoVeiculo = dao.listar();
		model.addAttribute("listarTipoVeiculo", listarTipoVeiculo);

		TipoServicoDao dao1 = new TipoServicoDao();
		List<TipoServico> listarTipoServico = dao1.listar();
		model.addAttribute("listarTipoServico", listarTipoServico);

		return "servico/servico";
	}

	@RequestMapping("incluirServico")
	public String incluirServico(Servico servico, Model model) {

		ServicoDao dao = new ServicoDao();
		dao.salvar(servico);
		model.addAttribute("servico", "Serviço cadastrado realizado com sucesso");

		return "forward:servico";
	}

	@RequestMapping("listarServico")
	public String listarServico(Model model) {
		ServicoDao dao = new ServicoDao();
		model.addAttribute("listarServico", dao.listar());
		return "servico/listarServico";
	}

	@RequestMapping("exibirAlterarServico")
	public String exibirAlterarServico(Servico servico, Model model) {
		
		TipoVeiculoDao dao = new TipoVeiculoDao();
		List<TipoVeiculo> listarTipoVeiculo = dao.listar();
		model.addAttribute("listarTipoVeiculo", listarTipoVeiculo);

		TipoServicoDao dao1 = new TipoServicoDao();
		List<TipoServico> listarTipoServico = dao1.listar();
		model.addAttribute("listarTipoServico", listarTipoServico);

		ServicoDao dao2 = new ServicoDao();
		Servico servicoCompleto = dao2.buscarPorId(servico.getId());
		model.addAttribute("servico", servicoCompleto);

		return "servico/alterarServico";
	}

	@RequestMapping("/alterarServico")
	public String alterarServico(Servico servico, Model model) {

		ServicoDao dao = new ServicoDao();
		dao.alterar(servico);
		model.addAttribute("servico", "Serviço Alterada com Sucesso!");

		return "forward:listarServico";
	}

	@RequestMapping("removerServico")
	public String removerServico(Servico servico, Model model) {
		ServicoDao dao = new ServicoDao();
		dao.remover(servico);
		model.addAttribute("servico", "Serviço Removida com Sucesso");
		return "forward:listarServico";
	}
}