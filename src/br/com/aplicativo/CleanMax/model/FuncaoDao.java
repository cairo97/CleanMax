package br.com.aplicativo.CleanMax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<Funcao> listar() {

		try {
			List<Funcao> listarFuncao = new ArrayList<Funcao>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM funcao ORDER BY descricao");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Funcao funcao = new Funcao();
				
				funcao.setDescricao(rs.getString("descricao"));
			
				
				
				listarFuncao.add(funcao);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarFuncao;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
