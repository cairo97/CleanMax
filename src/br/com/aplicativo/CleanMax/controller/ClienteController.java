package br.com.aplicativo.CleanMax.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;

@Controller
public class ClienteController {

	@RequestMapping("cadastro")
	public String CadastroCliente() {

		return "cadastro/cadastroCliente";
	}

	@RequestMapping("incluirCliente")
	public String incluirCliente(@Valid Cliente cliente, BindingResult result, Model model) {
	

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

	@RequestMapping("exibirAlterarCliente")
	public String exibirAlterarCliente(Cliente cliente, Model model) {

		ClienteDao dao = new ClienteDao();
		Cliente clienteCompleto = dao.buscarPorId(cliente.getId());

		model.addAttribute("cadastro", clienteCompleto);

		return "cadastro/alterarCliente";
	}

	@RequestMapping("alterarCliente")
	public String alterarCliente(Cliente cliente, Model model) {

		ClienteDao dao = new ClienteDao();
		dao.alterarCliente(cliente);
		model.addAttribute("mensagem", "Cliente Alterado com Sucesso!");

		return "forward:listarCliente";

	}

	@RequestMapping("/login")
	public String LoginCliente() {

		return "login/login";
	}

	@RequestMapping("/home")
	public String TelaInicial() {

		return "telaInicial/Index";
	}

	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Cliente cliente, HttpSession session, Model model) {
		
		ClienteDao dao = new ClienteDao();
		Cliente clienteLogado = dao.buscarCliente(cliente);
		
		if (clienteLogado != null) {
			session.setAttribute("clienteLogado", clienteLogado);
			return "telaInicial/TelaApresentacao";
		}
		
		model.addAttribute("msg", "Não foi encontrado um usuario com o login e senha informados.");
		return "telaInicial/Index";
	}

	@RequestMapping("/telaIncial")
	public String Tela() {

		return "telaInicial/home";
	}

	@RequestMapping("/tabelaPreco")
	public String tabelaPreco() {

		return "servico/tabelaPreco";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "telaInicial/Index";
	}
	@RequestMapping("apresentacao")
	public String apresentacao() {

		return "telaInicial/TelaApresentacao";
	}
	
	
	@RequestMapping("/acesso")
	public String acesso() {

		return "telaInicial/acesso";
	}
	@RequestMapping("/acesso2")
	public String acesso2() {

		return "telaInicial/Index2";
	}
}
