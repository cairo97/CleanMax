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
public class AgendarServicoController {

	@RequestMapping("agendar")
	public String Agendar(Model model) {
         
		TipoVeiculoDao dao = new TipoVeiculoDao();
		List<TipoVeiculo> listarTipoVeiculo = dao.listar();
		model.addAttribute("listarTipoVeiculo", listarTipoVeiculo);

		TipoServicoDao dao1 = new TipoServicoDao();
		List<TipoServico> listarTipoServico = dao1.listar();
		model.addAttribute("listarTipoServico", listarTipoServico);
		
		return "agendarServico/agendarServico";
	}
	
	
	@RequestMapping("exibirPreco")
	public String exibirPreco(TipoVeiculo tipoVeiculo,TipoServico tipoServico,Model model) {

		ServicoDao dao = new ServicoDao();
		Servico ServicoCompleto = dao.buscarPorServico(tipoVeiculo.getId(), tipoServico.getId());

		model.addAttribute("preco", ServicoCompleto.getPreco());

		return "agendarServico/agendarServico";
	}

/*	@RequestMapping("incluirAgenda")
//	public String incluirAgenda(Agendar agendar, Model model) {

//		AgendarDao dao = new AgendarDao();
		dao.salvar(agendar);
		model.addAttribute("Agendamento", "Cadastro realizado com sucesso");

		return "agendarServico/agendamento";

	}

	@RequestMapping("listarAgendamento")  
	public String listarAgendamento(Model model) {
		AgendarDao dao = new AgendarDao();
		model.addAttribute("listarAgendamento", dao.listar());
		return "agendarServico/pesquisarAgendamento";
	}

	@RequestMapping("removerAgendamento")
	public String removerAgendamento(Agendar agendar, Model model) {
		AgendarDao dao = new AgendarDao();
		dao.remover(agendar);
		model.addAttribute("remover", "Agendamento Removido com Sucesso");
		return "forward:listarAgendamento";
	}	
		
		@RequestMapping("exibirAlterarAgendamento")
		public String alterarAgendamento(Agendar agendar, Model model) {

			AgendarDao dao = new AgendarDao();
			Agendar AgendarCompleto = dao.buscarPorId(agendar.getId());

			model.addAttribute("agendarServico", agendarCompleto);

			return "agendarServico/alterarAgendamento";
	    }
	    
	    @RequestMapping("alterarAgendamento")
	    public String alteraAgendamento(Agendar agendar, Model model) {

	    	AgendarDao dao = new AgendarDao();
		dao.alterarAgendamento(Agendar);
		model.addAttribute("mensagem", "Agendamento Alterado com Sucesso!");

		return "forward:listarAgendamento";*/
		
		
	}
	

