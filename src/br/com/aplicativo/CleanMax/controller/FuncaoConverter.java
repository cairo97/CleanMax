package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.Funcao;
import br.com.aplicativo.CleanMax.model.FuncaoDao;


public class FuncaoConverter implements Converter<String, Funcao>{

		
		
		public Funcao convert(String id) {
			
			if (id != null && !id.equals("")) {
			FuncaoDao dao = new FuncaoDao();
			return dao.buscarPorId(Integer.valueOf(id));
			} else {
				return null;
			}
		}
	}
