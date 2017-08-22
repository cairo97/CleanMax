package br.com.aplicativo.CleanMax.controller;

import java.net.ResponseCache;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public @ResponseBody String exibirPreco(@RequestParam Integer tipoVeiculo,@RequestParam Integer tipoServico,HttpServletResponse response) {

		ServicoDao dao = new ServicoDao();
		Servico ServicoCompleto = dao.buscarPorServico(tipoVeiculo, tipoServico);
		
        
		response.setStatus(200);
		return ServicoCompleto.getPreco()+"";
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
	

