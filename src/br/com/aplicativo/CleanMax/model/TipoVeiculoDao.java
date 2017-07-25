package br.com.aplicativo.CleanMax.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

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
	
	
	public List<TipoVeiculo> listar() {

		try {
			List<TipoVeiculo> listarVeiculo = new ArrayList<TipoVeiculo>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipoVeiculo ORDER BY descricao");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				TipoVeiculo veiculo = new TipoVeiculo();
				
				veiculo.setDescricao(rs.getString("descricao"));
			
				
				
				listarVeiculo.add(veiculo);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarVeiculo;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
  
	
	 public TipoVeiculo buscarPorId(int id) {
			
			try {
			    
			    PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipoVeiculo WHERE id = ?");
			    stmt.setInt(1, id);
			    ResultSet rs = stmt.executeQuery();
			    
			    TipoVeiculo veiculo = new TipoVeiculo();
			    
			    while (rs.next()) {

				
			    	veiculo.setDescricao(rs.getString("descricao"));
				
			    }

			    rs.close();
			    stmt.close();
			    connection.close();

			    return veiculo;

			} catch (SQLException e) {
			    throw new RuntimeException(e);
			}
		    }
}
