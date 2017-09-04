package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;



public class ClienteConverter implements Converter<String, Cliente>{


		
		
		public Cliente convert(String id) {
			
			if (id != null && !id.equals("")) {
			ClienteDao dao = new ClienteDao();
			return dao.buscarPorId(Integer.valueOf(id));
			} else {
				return null;
			}
		}
}
