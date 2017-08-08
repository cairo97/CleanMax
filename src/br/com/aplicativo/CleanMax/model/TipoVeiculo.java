package br.com.aplicativo.CleanMax.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class TipoVeiculo {
	private Integer id;
	
	@NotEmpty(message="O código deve ser preenchido")
	@Size(min = 2, max = 20,message= "O tamanho deve ser entre 2 e 20")
	private String descricao;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
