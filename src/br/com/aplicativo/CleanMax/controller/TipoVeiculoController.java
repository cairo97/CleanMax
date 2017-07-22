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
}