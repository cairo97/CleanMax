package br.com.aplicativo.CleanMax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class ClienteDao {

	private Connection connection;

	public ClienteDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Cliente cliente) {
		try {

			String sql = "INSERT INTO cliente (nome,senha,email,dataNascimento,celular,telefone,cpf) VALUES (?,?,?,?,?,?,?)";

			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSenha());
			stmt.setString(3, cliente.getEmail());
			if (cliente.getDataNascimento() != null) {
				stmt.setDate(4, new java.sql.Date(cliente.getDataNascimento().getTime()));
			} else {
				stmt.setDate(4, null);
			}

			stmt.setString(5, cliente.getCelular());
			stmt.setString(6, cliente.getTelefone());
			stmt.setString(7, cliente.getCpf());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Cliente> listar() {

		try {
			List<Cliente> listarCliente = new ArrayList<Cliente>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM cliente ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Cliente cliente = new Cliente();

				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setSenha(rs.getString("senha"));
				cliente.setEmail(rs.getString("email"));
				cliente.setDataNascimento(rs.getDate("dataNascimento"));
				cliente.setCelular(rs.getString("celular"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setCpf(rs.getString("cpf"));

				listarCliente.add(cliente);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarCliente;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alterarCliente(Cliente cliente) {
		try {
			String sql = "UPDATE cliente set (nome=?, senha=?, email=?, dataNascimento=?, celular=?, telefone=?, cpf=?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSenha());
			stmt.setString(3, cliente.getEmail());
			stmt.setDate(4, new java.sql.Date(cliente.getDataNascimento().getTime()));
			stmt.setString(5, cliente.getCelular());
			stmt.setString(6, cliente.getTelefone());
			stmt.setString(7, cliente.getCpf());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Cliente buscarPorId(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM cliente WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Cliente cliente = new Cliente();

			while (rs.next()) {

				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setSenha(rs.getString("senha"));
				cliente.setEmail(rs.getString("email"));
				cliente.setDataNascimento(rs.getDate("dataNascimento"));
				cliente.setCelular(rs.getString("celular"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setCpf(rs.getString("cpf"));
			}

			rs.close();
			stmt.close();
			connection.close();

			return cliente;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void remover(Cliente cliente) {

		try {
			String sql = "DELETE FROM cliente WHERE id = ?";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setLong(1, cliente.getId());

			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
