package br.com.aplicativo.CleanMax.model;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class TipoVeiculoDao {
   
	
	private Connection connection;

	public TipoVeiculoDao() {
		try {
			this.connection = (Connection) new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(TipoVeiculo veiculo) {
		try {
			String sql = "INSERT INTO tipoVeiculo (descricao) VALUES (?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);				
			stmt.setString(1, veiculo.getDescricao());						

								
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
