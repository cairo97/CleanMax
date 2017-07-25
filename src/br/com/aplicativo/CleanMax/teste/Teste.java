package br.com.aplicativo.CleanMax.teste;

import org.junit.Test;

import br.com.aplicativo.CleanMax.model.Cliente;
import br.com.aplicativo.CleanMax.model.ClienteDao;

public class Teste {

	@Test
	public void testeInserir(){
	Cliente c = new Cliente();
	
	c.setNome("Rafael");
	c.setSenha("232321");
	c.setEmail("jhkjhkjhgk");
	
	ClienteDao c1 = new ClienteDao();
	
	c1.salvar(c);
	
	
	}

}
