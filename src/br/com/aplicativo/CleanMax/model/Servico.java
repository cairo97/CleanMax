package br.com.aplicativo.CleanMax.model;

public class Servico {
	private int id;
	private String nome;
	private TipoVeiculo veiculo;
	private TipoServico servico;

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

	public TipoVeiculo getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(TipoVeiculo veiculo) {
		this.veiculo = veiculo;
	}

	public TipoServico getServico() {
		return servico;
	}

	public void setServico(TipoServico servico) {
		this.servico = servico;
	}

}
