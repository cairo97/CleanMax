package br.com.aplicativo.CleanMax.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "funcionario")
public class Funcionario {

	@Id
	private Integer id;
	@Column
	private String nome;
	@Column
	private String senha;
	@Column
	private String email;
	@Column
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dataNascimento;
	@Column
	private String celular;
	@Column
	private String telefone;
	@Column
	private String cpf;
	@Column
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
