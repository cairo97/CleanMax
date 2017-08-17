package br.com.aplicativo.CleanMax.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class FuncionarioDao {
	
	private Connection connection;

	public FuncionarioDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Funcionario funcionario) {
		try {

			String sql = "INSERT INTO funcionario (nome,senha,email,dataNascimento,celular,telefone,cpf,gestor) VALUES (?,?,?,?,?,?,?,?)";

			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getSenha());
			stmt.setString(3, funcionario.getEmail());
			if (funcionario.getDataNascimento() != null) {
				stmt.setDate(4, new java.sql.Date(funcionario.getDataNascimento().getTime()));
			} else {
				stmt.setDate(4, null);
			}
			stmt.setString(5, funcionario.getCelular());
			stmt.setString(6, funcionario.getTelefone());
			stmt.setString(7, funcionario.getCpf());
			stmt.setBoolean(8, funcionario.isGestor());

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Funcionario> listar() {

		try {
			List<Funcionario> listaCliente = new ArrayList<Cliente>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM cliente ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listaCliente.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaCliente;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alterarCliente(Cliente cliente) {
		try {
			String sql = "UPDATE cliente set (nome=?, senha=?, email=?, dataNascimento=?, celular=?, telefone=?, cpf=? where id=?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getSenha());
			stmt.setString(3, cliente.getEmail());
			stmt.setDate(4, new java.sql.Date(cliente.getDataNascimento().getTime()));
			stmt.setString(5, cliente.getCelular());
			stmt.setString(6, cliente.getTelefone());
			stmt.setString(7, cliente.getCpf());
			stmt.setInt(8, cliente.getId());

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
	
	private Cliente montarObjeto(ResultSet rs) throws SQLException {

		Cliente clienteConsultado = new Cliente();
		
		clienteConsultado.setId(rs.getInt("id"));
		clienteConsultado.setNome(rs.getString("nome"));
		clienteConsultado.setSenha(rs.getString("senha"));
		clienteConsultado.setEmail(rs.getString("email"));	
		clienteConsultado.setDataNascimento(rs.getDate("dataNascimento"));
		clienteConsultado.setCelular(rs.getString("celular"));
		clienteConsultado.setTelefone(rs.getString("telefone"));
		clienteConsultado.setCpf(rs.getString("cpf"));
		
		
		return clienteConsultado;
	}

	public Cliente buscarCliente(Cliente cliente) {
		try {
			Cliente clienteConsultado = null;
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from cliente where email = ? and senha = ?");

			
			stmt.setString(2, cliente.getSenha());
			stmt.setString(1, cliente.getEmail());
			
			
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				clienteConsultado = montarObjeto(rs);
			}
			rs.close();
			stmt.close();
			return clienteConsultado;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}
