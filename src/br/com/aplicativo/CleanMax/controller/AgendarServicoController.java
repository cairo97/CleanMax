package br.com.aplicativo.CleanMax.controller;

import java.net.ResponseCache;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.xml.ws.Response;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.aplicativo.CleanMax.model.Agendamento;
import br.com.aplicativo.CleanMax.model.AgendamentoDao;
import br.com.aplicativo.CleanMax.model.ClienteDao;
import br.com.aplicativo.CleanMax.model.Horario;
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
		
		model.addAttribute("horarios", Horario.obterHorarios() );
		
		
		return "agendarServico/agendarServico";
		
	}
	
	
	@RequestMapping("exibirPreco")
	public @ResponseBody String exibirPreco(@RequestParam Integer tipoVeiculo, @RequestParam Integer tipoServico, HttpServletResponse response) {

		ServicoDao dao = new ServicoDao();
		Servico ServicoCompleto = dao.buscarPorServico(tipoVeiculo, tipoServico);
        
		response.setStatus(200);
		return ServicoCompleto.getPreco()+"";
	}
	
	@RequestMapping("exibirCodigo")
	public @ResponseBody String exibirCodigo(@RequestParam Integer tipoVeiculo, @RequestParam Integer tipoServico, HttpServletResponse response) {

		ServicoDao dao = new ServicoDao();
		Servico ServicoCompleto = dao.buscarPorServico(tipoVeiculo, tipoServico);
        
		response.setStatus(200);
		return ServicoCompleto.getId()+"";
	}

	
	@RequestMapping("incluirAgendamento")
	public String incluirAgendamento(@Valid Agendamento agendamento,BindingResult result, Model model) {
		
		if (result.hasErrors()) {
			return "forward:servico";
			}

		AgendamentoDao dao = new AgendamentoDao();
		dao.salvar(agendamento);
		model.addAttribute("servicoMensagem", "Serviço cadastrado realizado com sucesso");

		return "forward:servico";
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
	

