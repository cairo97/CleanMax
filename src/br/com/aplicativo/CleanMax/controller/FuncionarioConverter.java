package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.Funcionario;
import br.com.aplicativo.CleanMax.model.FuncionarioDao;

public class FuncionarioConverter implements Converter<String, Funcionario>{
				
		public Funcionario convert(String id) {
			
			if (id != null && !id.equals("")) {
				FuncionarioDao dao = new FuncionarioDao();
			return dao.buscarPorId(Integer.valueOf(id));
			} else {
				return null;
			}
		}
}
