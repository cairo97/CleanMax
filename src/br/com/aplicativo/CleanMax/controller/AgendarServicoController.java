package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;

@Controller
public class AgendarServicoController {

	@RequestMapping("agendar")
	public String Agendar() {

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
	

