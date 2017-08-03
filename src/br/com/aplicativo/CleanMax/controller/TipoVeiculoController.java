package br.com.aplicativo.CleanMax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import br.com.aplicativo.CleanMax.model.TipoVeiculo;
import br.com.aplicativo.CleanMax.model.TipoVeiculoDao;


@Controller
public class TipoVeiculoController {

	@RequestMapping("/veiculo")
	public String Veiculo() {

		return "servico/tipoVeiculo";
	}

	@RequestMapping("incluirVeiculo")
	public String incluirVeiculo(TipoVeiculo tipoVeiculo, Model model) {

		TipoVeiculoDao dao = new TipoVeiculoDao();
		dao.salvar(tipoVeiculo);
		model.addAttribute("veiculo", "Veiculo cadastrado realizado com sucesso");
       
		return "forward:listarTipoVeiculo";

	}

	@RequestMapping("listarTipoVeiculo")
	public String listarTipoVeiculo(Model model) {
		TipoVeiculoDao dao = new TipoVeiculoDao();
		model.addAttribute("listarTipoVeiculo", dao.listar());
		return "servico/listarTipoVeiculo";
	}

	@RequestMapping("exibirAlterarVeiculo")
    public String exibirAlterarVeiculo(TipoVeiculo tipoVeiculo, Model model) {

	TipoVeiculoDao dao = new TipoVeiculoDao();
	TipoVeiculo veiculoCompleto = dao.buscarPorId(tipoVeiculo.getId());
	model.addAttribute("veiculo", veiculoCompleto);

	return "servico/alterarTipoVeiculo";
    }
	
	 @RequestMapping("/alterarTipoVeiculo")
	    public String alterarTipoVeiculo(TipoVeiculo tipoVeiculo, Model model) {

		 TipoVeiculoDao dao = new TipoVeiculoDao();
		dao.alterar(tipoVeiculo);
		model.addAttribute("veiculo", "Produto Alterado com Sucesso!");

		return "forward:listarTipoVeiculo";
	    }

	 @RequestMapping("removerVeiculo")
		public String removerVeiculo(TipoVeiculo tipoVeiculo, Model model) {
		 TipoVeiculoDao dao = new TipoVeiculoDao();
			dao.remover(tipoVeiculo);
			model.addAttribute("remover", "Produto Removido com Sucesso");
			return "forward:listarTipoVeiculo";
		}

}