package br.com.aplicativo.CleanMax.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Agendamento {

	private int id;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date data;
	private double hora;
	private TipoVeiculo tipoveiculo;
	private TipoVeiculo tiposervico;
	private String preco;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public double getHora() {
		return hora;
	}
	public void setHora(double hora) {
		this.hora = hora;
	}
	public TipoVeiculo getTipoVeiculo() {
		return tipoveiculo;
	}
	public void setTipoVeiculo(TipoVeiculo tipoveiculo) {
		this.tipoveiculo = tipoveiculo;
	}
	public TipoVeiculo getTipoServico() {
		return tiposervico;
	}
	public void setTipoServico(TipoVeiculo tiposervico) {
		this.tiposervico = tiposervico;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	
	
	

	
	
}
