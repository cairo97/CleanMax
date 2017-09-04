package br.com.aplicativo.CleanMax.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Servico {
	private int id;

	@NotEmpty(message = "O Servico deve ser preenchido")
	@Size(min = 4, max = 20, message = "O tamanho deve ser entre 4 e 20")
	private String nome;
	
	@NotNull(message = "O tipo de veículo deve ser preenchido")    
	private TipoVeiculo tipoVeiculo;
	
	@NotNull(message = "O tipo de serviço deve ser preenchido")
	private TipoServico tipoServico;
	
	private double preco;

	public TipoVeiculo getTipoVeiculo() {
		return tipoVeiculo;
	}

	public void setTipoVeiculo(TipoVeiculo tipoVeiculo) {
		this.tipoVeiculo = tipoVeiculo;
	}

	public TipoServico getTipoServico() {
		return tipoServico;
	}

	public void setTipoServico(TipoServico tipoServico) {
		this.tipoServico = tipoServico;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

}
