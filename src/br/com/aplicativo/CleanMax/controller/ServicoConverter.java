package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.Servico;
import br.com.aplicativo.CleanMax.model.ServicoDao;

public class ServicoConverter implements Converter<String, Servico> {

	public Servico convert(String id) {

		if (id != null && !id.equals("")) {
			ServicoDao dao = new ServicoDao();
			return dao.buscarPorId(Integer.valueOf(id));
		} else {
			return null;
		}
	}
}