package br.com.aplicativo.CleanMax.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		String uri = request.getRequestURI();
		if (uri.contains("bootstrap") || uri.contains("css") || uri.contains("view/style") || uri.contains("img")
				|| uri.contains("js") || uri.endsWith("CleanMax/home") || uri.endsWith("efetuarLogin")
				|| uri.endsWith("efetuarLogin2") || uri.endsWith("cadastro") || uri.endsWith("incluirCliente")
				|| uri.endsWith("cadastro/cadastroCliente") || uri.endsWith("telaInicial/index")
				|| uri.endsWith("tabelaPreco") || uri.endsWith("apresentacao") || uri.endsWith("acesso")
				|| uri.endsWith("acesso2") || uri.endsWith("manuntencao") || uri.endsWith("TelaApresentacao")|| uri.endsWith("lavagemCliente")) {

			return true;
		}
		if (request.getSession().getAttribute("funcionarioLogado") != null) {
			return true;
		}
		if (request.getSession().getAttribute("clienteLogado") != null) {

			// Servicoes que o cliente nao pode acessar

			if (uri.endsWith("cadastroFuncionario") || uri.endsWith("incluirFuncionario")
					|| uri.endsWith("listarFuncionario") || uri.endsWith("removerFuncionario")
					|| uri.endsWith("alterarFuncionario") || uri.endsWith("efetuarLogin2") || uri.endsWith("servico")
					|| uri.endsWith("incluirServico") || uri.endsWith("listarServico") || uri.endsWith("alterarServico")
					|| uri.endsWith("removerServico") || uri.endsWith("tipoServico")
					|| uri.endsWith("incluirTipoServico") || uri.endsWith("listarTipoServico")
					|| uri.endsWith("removerTipoServico") || uri.endsWith("alterarTipoServico")
					|| uri.endsWith("veiculo") || uri.endsWith("incluirVeiculo") || uri.endsWith("listarTipoVeiculo")
					|| uri.endsWith("alterarTipoVeiculo") || uri.endsWith("removerVeiculo")) {

				response.sendRedirect("/CleanMax/acessoNegado");
				return false;
			}
			return true;
		}

		response.sendRedirect("/CleanMax/home");
		return false;
	}
}
