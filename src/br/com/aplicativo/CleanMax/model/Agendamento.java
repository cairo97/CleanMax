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
	
	
	
	public double getHora() {
		return hora;
	}
	public void setHora(double hora) {
		this.hora = hora;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDateDis() {
		return data;
	}
	public void setDateDis(Date dateDis) {
		this.data = dateDis;
	}
	public TipoVeiculo getTipoveiculo() {
		return tipoveiculo;
	}
	public void setTipoveiculo(TipoVeiculo tipoveiculo) {
		this.tipoveiculo = tipoveiculo;
	}
	public TipoVeiculo getTiposervico() {
		return tiposervico;
	}
	public void setTiposervico(TipoVeiculo tiposervico) {
		this.tiposervico = tiposervico;
	}
	
	
}
