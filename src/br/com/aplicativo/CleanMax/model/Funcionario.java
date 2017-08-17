package br.com.aplicativo.CleanMax.model;

import java.util.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class Funcionario {

	private Integer id;
	@NotEmpty(message = "O nome deve ser preenchido")
	@Size(min = 4, max = 20, message = "O tamanho deve ser entre 4 e 20")
	private String nome;
	@NotEmpty(message = "O senha deve ser preenchido")
	@Size(min = 4, max = 20, message = "O tamanho deve ser entre 4 e 20")
	private String senha;
	private String email;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dataNascimento;
	private String celular;
	private String telefone;
	private String cpf;
	private boolean gestor;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public boolean isGestor() {
		return gestor;
	}
	public void setGestor(boolean gestor) {
		this.gestor = gestor;
	}
	
	
	
	
}