package br.com.aplicativo.CleanMax.controller;

import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;

@Controller
public class ClienteController {

	@RequestMapping("/cadastro")
	public String CadastroCliente() {

		return "cadastro/cadastroCliente";
	}

	@RequestMapping("incluirCliente")
	public String incluirCliente(Cliente cliente, Model model) {

		ClienteDao dao = new ClienteDao();
		dao.salvar(cliente);
		model.addAttribute("cadastrar", "Cadastro realizado com sucesso");

		return "cadastro/cadastroCliente";

	}

	@RequestMapping("listarCliente")
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

	@RequestMapping("alterarCliente")
	public String alterarCliente(Cliente produto, Model model) {

		ClienteDao dao = new ClienteDao();
		List<Cliente> listarCliente = dao.listar();

		model.addAttribute("listaCliente", listarCliente);

		return "cadastro/alterarCliente";

	}

}
