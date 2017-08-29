package br.com.aplicativo.CleanMax.model;

import java.util.ArrayList;
import java.util.List;

public class Horario {
	
	private int codigo;
	private String labelHorario;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getLabelHorario() {
		return labelHorario;
	}
	public void setLabelHorario(String labelHorario) {
		this.labelHorario = labelHorario;
	}
	
	public static List<Horario> obterHorarios(){
		List<Horario> horarios = new ArrayList<>();
		horarios.add(new Horario(1, "08:00"));
		horarios.add(new Horario(2, "09:00"));
		horarios.add(new Horario(3, "10:00"));
		horarios.add(new Horario(4, "11:00"));
		
		return horarios;
	}
	
	public Horario(int codigo, String labelHorario) {
		super();
		this.codigo = codigo;
		this.labelHorario = labelHorario;
	}

}
