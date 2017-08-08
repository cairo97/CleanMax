package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.TipoVeiculo;
import br.com.aplicativo.CleanMax.model.TipoVeiculoDao;

public class TipoVeiculoConverter implements Converter<String, TipoVeiculo> {

	public TipoVeiculo convert(String id) {

		if (id != null && !id.equals("")) {
			TipoVeiculoDao dao = new TipoVeiculoDao();
			return dao.buscarPorId(Integer.valueOf(id));
		} else {
			return null;
		}
	}
}
