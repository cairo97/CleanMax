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

	public void salvar(TipoServico servico) {
		try {
			String sql = "INSERT INTO tipoServico (descricao) VALUES (?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, servico.getDescricao());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<TipoServico> listar() {

		try {
			List<TipoServico> listarServico = new ArrayList<TipoServico>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM tipoServico ORDER BY descricao");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				TipoServico servico = new TipoServico();

				servico.setId(rs.getInt("id"));
				servico.setDescricao(rs.getString("descricao"));

				listarServico.add(servico);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarServico;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


	
	
	

	public void alterarServico(TipoServico servico) {
		try {
			String sql = "UPDATE tipoServico set (descricao=?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setString(1, servico.getDescricao());
			

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

			TipoServico servico = new TipoServico();

			while (rs.next()) {

				servico.setId(rs.getInt("id"));
				servico.setDescricao(rs.getString("descricao"));
				
			}

			rs.close();
			stmt.close();
			connection.close();

			return servico;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void remover(TipoServico servico) {

		try {
			String sql = "DELETE FROM tipoServico WHERE id = ?";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setLong(1, servico.getId());

			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
