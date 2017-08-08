package br.com.aplicativo.CleanMax.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Agendamento {

	private int id;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dateDis;
	private TipoVeiculo tipoVeiculo;
	private TipoServico tipoServico;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDateDis() {
		return dateDis;
	}
	public void setDateDis(Date dateDis) {
		this.dateDis = dateDis;
	}
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
	
	
}
