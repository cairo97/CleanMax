package br.com.aplicativo.CleanMax.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Funcionario;
import br.com.aplicativo.CleanMax.model.FuncionarioDao;

@Controller
public class FuncionarioController {
	

		@RequestMapping("cadastroFuncionario")
		public String CadastroFuncionario() {

			return "cadastro/cadastroFuncionario";
		}

		@RequestMapping("incluirFuncionario")
		public String incluirFuncionario(@Valid Funcionario funcionario, BindingResult result, Model model) {

			if (result.hasErrors()) {
				return "forward:cadastro";
			}

			FuncionarioDao dao = new FuncionarioDao();
			dao.salvar(funcionario);
			model.addAttribute("cadastrar", "Cadastro realizado com sucesso");

			return "cadastro/cadastroFuncionario";

		}

		@RequestMapping("listarFuncionario")
		public String listarFuncionario(Model model) {
			FuncionarioDao dao = new FuncionarioDao();
			model.addAttribute("listarFuncionario", dao.listar());
			return "cadastro/pesquisarFuncionario";
		}

		@RequestMapping("removerFuncionario")
		public String removerFuncionario(Funcionario funcionario, Model model) {
			FuncionarioDao dao = new FuncionarioDao();
			dao.remover(funcionario);
			model.addAttribute("remover", "Produto Removido com Sucesso");
			return "forward:listarFuncionario";
		}

		@RequestMapping("exibirAlterarFuncionario")
		public String exibirAlterarFuncionario(Funcionario funcionario, Model model) {

			FuncionarioDao dao = new FuncionarioDao();
			Funcionario funcionarioCompleto = dao.buscarPorId(funcionario.getId());

			model.addAttribute("cadastro", funcionarioCompleto);

			return "cadastro/alterarFuncionario";
		}

		@RequestMapping("alterarFuncionario")
		public String alterarFuncionario(Funcionario funcionario, Model model) {

			FuncionarioDao dao = new FuncionarioDao();
			dao.alterarFuncionario(funcionario);
			model.addAttribute("mensagem", "Funcionario Alterado com Sucesso!");

			return "forward:listarFuncionario";

		}

	/*	@RequestMapping("/login")
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
				return "telaInicial/home";
			}
			
			model.addAttribute("msg", "Não foi encontrado um usuário com o login e senha informados.");
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
		
		*/
	}
