package br.com.aplicativo.CleanMax.controller;


import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.aplicativo.CleanMax.model.Agendamento;
import br.com.aplicativo.CleanMax.model.AgendamentoDao;

import br.com.aplicativo.CleanMax.model.Horario;
import br.com.aplicativo.CleanMax.model.Servico;
import br.com.aplicativo.CleanMax.model.ServicoDao;

@Controller
public class AgendamentoController {

	@RequestMapping("agendar")
	public String Agendar(Model model) {
     

		ServicoDao dao1 = new ServicoDao();
		List<Servico> listarServico = dao1.listar();
		model.addAttribute("listarServico", listarServico);
		
		model.addAttribute("horarios", Horario.obterHorarios() );
		
		
		return "agendarServico/agendarServico";
		
	}
	
	
	@RequestMapping("exibirPreco")
	public @ResponseBody String exibirPreco(@RequestParam Integer id, HttpServletResponse response) {

		ServicoDao dao = new ServicoDao();
		Servico ServicoCompleto = dao.buscarPorServico(id);
        
		response.setStatus(200);
		return ServicoCompleto.getPreco()+"";
	}
	
	@RequestMapping("exibirCodigo")
	public @ResponseBody String exibirCodigo(@RequestParam Integer id, HttpServletResponse response) {

		ServicoDao dao = new ServicoDao();
		Servico ServicoCompleto = dao.buscarPorServico(id);
        
		response.setStatus(200);
		return ServicoCompleto.getId()+"";
	}

	
	@RequestMapping("incluirAgendamento")
	public String incluirAgendamento(Agendamento agendamento, Model model) {
		
		AgendamentoDao dao = new AgendamentoDao();
	    agendamento.setStatus("Pendente");
		dao.salvar(agendamento);
		model.addAttribute("agendar", "Agendamento cadastrado com sucesso");

		return "agendarServico/agendarServico";
	}
	
	

	@RequestMapping("listarAgendamento")
	public String listarAgendamento(Model model) {
		AgendamentoDao dao = new AgendamentoDao();
		model.addAttribute("listarAgendamento", dao.listar());
		return "agendarServico/listarAgendamento";
	}

	
	@RequestMapping("removerAgendamento")
	public String removerAgendamento(Agendamento agendamento, Model model) {
	 AgendamentoDao dao = new AgendamentoDao();
		dao.remover(agendamento);
		model.addAttribute("agendamento", "Agendamento removido com Sucesso");
		return "forward:listarAgendamento";
	}
	
	@RequestMapping("lavagemCliente")
	public String lavagemCliente(Agendamento agendamento,Model model) {
		AgendamentoDao dao = new AgendamentoDao();
		Agendamento agendamentoCompleto = dao.buscarPorIda(agendamento.getId());
		model.addAttribute("lavagemCliente",agendamentoCompleto);
		return "servico/listarAgendamento";
	}
	
	
//	
//	@RequestMapping("incluirAgenda")
//	public String incluirAgenda(Agendamento agendamento, Model model) {
//
//		AgendamentoDao dao = new AgendamentoDao();
//		dao.salvar(agendar);
//		model.addAttribute("Agendamento", "Cadastro realizado com sucesso");
//
//		return "agendarServico/agendamento";
//
//	}
//
//	@RequestMapping("listarAgendamento")  
//	public String listarAgendamento(Model model) {
//		AgendamentoDao dao = new AgendamentoDao();
//		model.addAttribute("listarAgendamento", dao.listar());
//		return "agendarServico/pesquisarAgendamento";
//	}
//
//	@RequestMapping("removerAgendamento")
//	public String removerAgendamento(Agendamento agendamento, Model model) {
//		AgendamentoDao dao = new AgendamentoDao();
//		dao.remover(agendar);
//		model.addAttribute("remover", "Agendamento Removido com Sucesso");
//		return "forward:listarAgendamento";
//	}	
//		
//		@RequestMapping("exibirAlterarAgendamento")
//		public String alterarAgendamento(Agendamento agendamento, Model model) {
//
//			AgendamentoDao dao = new AgendamentoDao();
//			Agendar AgendarCompleto = dao.buscarPorId(agendar.getId());
//
//			model.addAttribute("agendarServico", agendarCompleto);
//
//			return "agendarServico/alterarAgendamento";
//	    }
//	    
//	    @RequestMapping("alterarAgendamento")
//	    public String alteraAgendamento(Agendamento agendamento, Model model) {
//
//	    	AgendamentoDao dao = new AgendamentoDao();
//		dao.alterarAgendamento(agendamento);
//		model.addAttribute("mensagem", "Agendamento Alterado com Sucesso!");
//
//		return "forward:listarAgendamento";
		
		
	}


