package br.com.aplicativo.CleanMax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class FuncaoDao {
   
private Connection connection;
	public FuncaoDao() {
		try{
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public void salvar(Funcao funcao) {
		try {

			String sql = "INSERT INTO funcao (descricao) VALUES (?)";

			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setString(1, funcao.getDescricao());
			

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
