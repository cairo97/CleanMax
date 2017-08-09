package br.com.aplicativo.CleanMax.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;

@Controller
public class ClienteController {

	@RequestMapping("cadastro")
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

	    @RequestMapping("efetuarLogin")
	    public String efetuarLogin(Cliente cliente, HttpSession session, Model
	    model) {
	    	ClienteDao dao = new ClienteDao();
	    	Cliente usuarioLogado = dao.buscarCliente(cliente);
	    if (usuarioLogado != null) {
	    session.setAttribute("usuarioLogado", usuarioLogado);
	    return "principal/home";
	    }
	    model.addAttribute("msg", "Não foi encontrado um usuário com o login e senha informados.");
	    return "index";
	    }
	
	    public class AutorizadorInterceptor extends
	    HandlerInterceptorAdapter {
	    @Override
	    public boolean preHandle(HttpServletRequest request,
	    HttpServletResponse response, Object controller) throws
	    Exception {
	    
	    	String uri = request.getRequestURI();
	    	if (uri.contains("bootstrap") || uri.contains("css") ||
	    	uri.contains("img") || uri.contains("js") || uri.endsWith("estoque/")
	    	|| uri.endsWith("efetuarLogin")) {
	    	return true;
	    	}
	    	if (request.getSession().getAttribute("usuarioLogado") != null) {
	    	return true;
	    	}
	    	response.sendRedirect("/telaInicial/Index");
	    	return false;
	    	}
	    	}
	    @RequestMapping("logout")
	    public String logout(HttpSession session) {
	    session.invalidate();
	    return "index";
	    }
	    
}
