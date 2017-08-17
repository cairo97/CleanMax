package br.com.aplicativo.CleanMax.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Agendamento {

	private int id;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date data;
	private double hora;
	
	
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
	
	
}
