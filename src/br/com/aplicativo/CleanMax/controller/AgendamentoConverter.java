package br.com.aplicativo.CleanMax.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.aplicativo.CleanMax.model.Agendamento;
import br.com.aplicativo.CleanMax.model.AgendamentoDao;



public class AgendamentoConverter implements Converter<String, Agendamento>{

		
		
		public Agendamento convert(String id) {
			
			if (id != null && !id.equals("")) {
				AgendamentoDao dao = new AgendamentoDao();
			return dao.buscarPorId(Integer.valueOf(id));
			} else {
				return null;
			}
		}
	}

