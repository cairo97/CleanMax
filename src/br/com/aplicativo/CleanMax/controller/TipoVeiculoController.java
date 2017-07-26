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
	public String incluirVeiculo(TipoVeiculo veiculo, Model model) {

		TipoVeiculoDao dao = new TipoVeiculoDao();
		dao.salvar(veiculo);
		model.addAttribute("veiculo", "Veiculo cadastrado realizado com sucesso");

		return "forward:veiculo";

	}

	@RequestMapping("listarVeiculo")
	public String listarVeiculo(Model model) {
		TipoVeiculoDao dao = new TipoVeiculoDao();
		model.addAttribute("listarVeiculo", dao.listar());
		return "servico/listarVeiculo";
	}

	@RequestMapping("exibirAlterarVeiculo")
    public String exibirAlterarVeiculo(TipoVeiculo veiculo, Model model) {

	TipoVeiculoDao dao = new TipoVeiculoDao();
	TipoVeiculo veiculoCompleto = dao.buscarPorId(veiculo.getId());
	model.addAttribute("veiculo", veiculoCompleto);

	return "servico/alterarVeiculo";
    }
	
	 @RequestMapping("/alterarVeiculo")
	    public String alterarVeiculo(TipoVeiculo veiculo, Model model) {

		 TipoVeiculoDao dao = new TipoVeiculoDao();
		dao.alterar(veiculo);
		model.addAttribute("veiculo", "Produto Alterado com Sucesso!");

		return "forward:listarVeiculo";
	    }

	 @RequestMapping("removerVeiculo")
	    public String removerVeiculo(TipoVeiculo veiculo, Model model) {

		 TipoVeiculoDao dao = new TipoVeiculoDao();
		dao.remover(veiculo.getId());
		model.addAttribute("veiculo", "Veiculo Removido com Sucesso");

		return "forward:listarVeiculo";
	    }

}