package br.com.aplicativo.CleanMax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	public void salvar(TipoVeiculo tipoVeiculo) {
		try {
			String sql = "INSERT INTO tipoVeiculo (descricao) VALUES (?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, tipoVeiculo.getDescricao());

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

				TipoVeiculo tipoVeiculo = new TipoVeiculo();

				tipoVeiculo.setId(rs.getInt("id"));
				tipoVeiculo.setDescricao(rs.getString("descricao"));

				listarVeiculo.add(tipoVeiculo);
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

			TipoVeiculo tipoVeiculo = new TipoVeiculo();

			while (rs.next()) {
                
				tipoVeiculo.setId(rs.getInt("id"));
				tipoVeiculo.setDescricao(rs.getString("descricao"));

			}

			rs.close();
			stmt.close();
			connection.close();

			return tipoVeiculo;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	 public void alterar(TipoVeiculo tipoVeiculo) {

			String sql = "UPDATE tipoVeiculo SET descricao=? WHERE id=?";
			PreparedStatement stmt;

			try {
			    stmt = connection.prepareStatement(sql);

			    
			    stmt.setString(1, tipoVeiculo.getDescricao());
			    stmt.setInt(2, tipoVeiculo.getId());

			    stmt.execute();
			    connection.close();

			} catch (SQLException e) {
			    throw new RuntimeException(e);
			}
		    }

	 public void remover(TipoVeiculo tipoVeiculo) {

			try {

			    String sql = "DELETE FROM tipoVeiculo WHERE id = ?";
			    PreparedStatement stmt = connection.prepareStatement(sql);
			    stmt.setInt(1, tipoVeiculo.getId());
			    
			    stmt.execute();
			    stmt.close();
			    connection.close();

			} catch (SQLException e) {
			    throw new RuntimeException(e);
			}
		    }
		    

}
