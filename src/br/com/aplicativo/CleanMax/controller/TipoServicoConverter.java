package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.TipoServico;
import br.com.aplicativo.CleanMax.model.TipoServicoDao;


	public class TipoServicoConverter implements Converter<String, TipoServico> {
		public TipoServico convert(String id) {
			TipoServicoDao dao = new TipoServicoDao();
			return dao.buscarPorId(Integer.valueOf(id));
		}
	}

