package br.com.aplicativo.CleanMax.controller;



import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Servico;
import br.com.aplicativo.CleanMax.model.TipoVeiculo;
import br.com.aplicativo.CleanMax.model.TipoVeiculoDao;




@Controller
public class ServicoController {

@RequestMapping("/servico")
	public String Servico() {

		return "servico/servico";
		}
	
	
	@RequestMapping("incluirServico")
	public String incluirServico(Servico servico, Model model) {
		

		
		TipoVeiculoDao dao = new TipoVeiculoDao();
		List<TipoVeiculo> listarTipoVeiculo = dao.listar();
		model.addAttribute("listarTipoVeiculo", listarTipoVeiculo);

		
		return "forward:incluirServico";
}
}