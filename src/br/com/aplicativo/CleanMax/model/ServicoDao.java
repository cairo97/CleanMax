package br.com.aplicativo.CleanMax.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class ServicoDao {
	private Connection connection;

	public ServicoDao() {
		try {
			this.connection = (Connection) new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Servico servico) {
		try {
			String sql = "INSERT INTO servico (nome,tipoVeiculo_id,tipoServico_id,preco) VALUES (?,?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, servico.getNome());
			stmt.setInt(2, servico.getTipoVeiculo().getId());
			stmt.setInt(3, servico.getTipoServico().getId());
			stmt.setDouble(4, servico.getPreco());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Servico> listar() {

		try {
			List<Servico> listarServico = new ArrayList<Servico>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM servico ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Servico servico = new Servico();

				servico.setId(rs.getInt("id"));
				servico.setNome(rs.getString("nome"));
				servico.setPreco(rs.getDouble("preco"));

				TipoServicoDao dao = new TipoServicoDao();
				TipoServico tipoServico = dao.buscarPorId(rs.getInt("tipoServico_id"));
				servico.setTipoServico(tipoServico);

				TipoVeiculoDao dao1 = new TipoVeiculoDao();
				TipoVeiculo tipoVeiculo = dao1.buscarPorId(rs.getInt("tipoVeiculo_id"));
				servico.setTipoVeiculo(tipoVeiculo);

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

	public void alterar(Servico servico) {

		String sql = "UPDATE servico set nome=?,tipoVeiculo_id=?,tipoServico_id=?,preco=? WHERE id=?";
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(sql);

			stmt.setString(1, servico.getNome());
			stmt.setInt(2, servico.getTipoVeiculo().getId());
			stmt.setInt(3, servico.getTipoServico().getId());
			stmt.setDouble(4, servico.getPreco());
			stmt.setInt(5, servico.getId());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Servico buscarPorId(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM servico WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Servico servico = new Servico();

			while (rs.next()) {

				servico.setId(rs.getInt("id"));
				servico.setNome(rs.getString("nome"));

				TipoVeiculoDao dao1 = new TipoVeiculoDao();
				TipoVeiculo tipoVeiculo = dao1.buscarPorId(rs.getInt("tipoVeiculo_id"));
				servico.setTipoVeiculo(tipoVeiculo);

				TipoServicoDao dao = new TipoServicoDao();
				TipoServico tipoServico = dao.buscarPorId(rs.getInt("tipoServico_id"));
				servico.setTipoServico(tipoServico);

				servico.setPreco(rs.getDouble("preco"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return servico;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public Servico buscarPorServico(int id) {

		try {

			PreparedStatement stmt = this.connection
					.prepareStatement("SELECT * FROM servico WHERE id = ?");
			stmt.setInt(1, id);
			

			ResultSet rs = stmt.executeQuery();

			Servico servico = new Servico();

			while (rs.next()) {
				servico.setPreco(rs.getDouble("preco"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return servico;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void remover(Servico servico) {

		try {
			String sql = "DELETE FROM servico WHERE id = ?";
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
