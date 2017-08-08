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

	@RequestMapping("incluirAgenda")
	public String incluirAgenda(Agendar agendar, Model model) {

		AgendarDao dao = new AgendarDao();
		dao.salvar(agendar);
		model.addAttribute("Agendamento", "Cadastro realizado com sucesso");

		return "agendarServico/agendamento";

	}

	
	
	//@RequestMapping("listarCliente")   FALTA CONCLUIR Ass: Sd Rafael
	public String listarCliente(Model model) {
		ClienteDao dao = new ClienteDao();
		model.addAttribute("listarCliente", dao.listar());
		return "cadastro/pesquisarCliente";
	}

	@RequestMapping("removerCliente")
	public String removerCliente(Cliente cliente, Model model) {
		ClienteDao dao = new ClienteDao();
		dao.remover(cliente);
		model.addAttribute("remover", "Produto Removido com Sucesso");
		return "forward:listarCliente";
	}	
		
		@RequestMapping("exibirAlterarCliente")
		public String alterarCliente(Cliente cliente, Model model) {

			ClienteDao dao = new ClienteDao();
			Cliente clienteCompleto = dao.buscarPorId(cliente.getId());

			model.addAttribute("cadastro", clienteCompleto);

			return "cadastro/alterarCliente";
	    }
	    
	    @RequestMapping("alterarCliente")
	    public String alteraCliente(Cliente cliente, Model model) {

	    	ClienteDao dao = new ClienteDao();
		dao.alterarCliente(cliente);
		model.addAttribute("mensagem", "Cliente Alterado com Sucesso!");

		return "forward:listarCliente";
		
		
	}
	
}
