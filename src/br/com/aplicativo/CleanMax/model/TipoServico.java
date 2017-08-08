package br.com.aplicativo.CleanMax.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class TipoServico {

	private int id;
	@NotEmpty(message="A descrição deve ser preenchida")
	@Size(min = 2, max = 20,message= "O tamanho deve ser entre 2 e 20")
	private String descricao;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	
}
