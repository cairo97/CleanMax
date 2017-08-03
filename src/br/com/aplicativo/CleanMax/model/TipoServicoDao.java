package br.com.aplicativo.CleanMax.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class TipoServicoDao {

	private Connection connection;

	public TipoServicoDao() {
		try {
			this.connection = (Connection) new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(TipoServico tipoServico) {
		try {
			String sql = "INSERT INTO tipoServico (descricao) VALUES (?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, tipoServico.getDescricao());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<TipoServico> listar() {

		try {
			List<TipoServico> listarTipoServico = new ArrayList<TipoServico>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipoServico ORDER BY descricao");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				TipoServico tipoServico = new TipoServico();

				tipoServico.setId(rs.getInt("id"));
				tipoServico.setDescricao(rs.getString("descricao"));

				listarTipoServico.add(tipoServico);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarTipoServico;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


	
	
	

	public void alterarTipoServico(TipoServico tipoServico) {
		try {
			String sql = "UPDATE tipoServico set descricao=? where id=?";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setInt(2, tipoServico.getId());
			stmt.setString(1, tipoServico.getDescricao());
			

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public TipoServico buscarPorId(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipoServico WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			TipoServico tipoServico = new TipoServico();

			while (rs.next()) {

				tipoServico.setId(rs.getInt("id"));
				tipoServico.setDescricao(rs.getString("descricao"));
				
			}

			rs.close();
			stmt.close();
			connection.close();

			return tipoServico;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void remover(TipoServico tipoServico) {

		try {
			String sql = "DELETE FROM tipoServico WHERE id = ?";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setLong(1, tipoServico.getId());

			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
