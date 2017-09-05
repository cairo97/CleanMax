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

			String sql = "INSERT INTO funcionario (nome,senha,email,dataNascimento,celular,telefone,cpf) VALUES (?,?,?,?,?,?,?)";

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
			

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Funcionario> listar() {

		try {
			List<Funcionario> listarFuncionario = new ArrayList<Funcionario>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM funcionario ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listarFuncionario.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarFuncionario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alterarFuncionario(Funcionario funcionario) {
		try {
			String sql = "UPDATE funcionario set (nome=?, senha=?, email=?, dataNascimento=?, celular=?, telefone=?, cpf=?, where id=?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setString(1, funcionario.getNome());
			stmt.setString(2, funcionario.getSenha());
			stmt.setString(3, funcionario.getEmail());
			stmt.setDate(4, new java.sql.Date(funcionario.getDataNascimento().getTime()));
			stmt.setString(5, funcionario.getCelular());
			stmt.setString(6, funcionario.getTelefone());
			stmt.setString(7, funcionario.getCpf());
			stmt.setInt(8, funcionario.getId());
			

			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Funcionario buscarPorId(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM funcionario WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Funcionario funcionario = new Funcionario();

			while (rs.next()) {

				funcionario.setId(rs.getInt("id"));
				funcionario.setNome(rs.getString("nome"));
				funcionario.setSenha(rs.getString("senha"));
				funcionario.setEmail(rs.getString("email"));
				funcionario.setDataNascimento(rs.getDate("dataNascimento"));
				funcionario.setCelular(rs.getString("celular"));
				funcionario.setTelefone(rs.getString("telefone"));
				funcionario.setCpf(rs.getString("cpf"));
				
				
			}

			rs.close();
			stmt.close();
			connection.close();

			return funcionario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void remover(Funcionario funcionario) {

		try {
			String sql = "DELETE FROM funcionario WHERE id = ?";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);

			stmt.setLong(1, funcionario.getId());

			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	private Funcionario montarObjeto(ResultSet rs) throws SQLException {

		Funcionario funcionarioConsultado = new Funcionario();
		
		funcionarioConsultado.setId(rs.getInt("id"));
		funcionarioConsultado.setNome(rs.getString("nome"));
		funcionarioConsultado.setSenha(rs.getString("senha"));
		funcionarioConsultado.setEmail(rs.getString("email"));	
		funcionarioConsultado.setDataNascimento(rs.getDate("dataNascimento"));
		funcionarioConsultado.setCelular(rs.getString("celular"));
		funcionarioConsultado.setTelefone(rs.getString("telefone"));
		funcionarioConsultado.setCpf(rs.getString("cpf"));
		
		
		
		return funcionarioConsultado;
	}

	public Funcionario buscarFuncionario(Funcionario funcionario) {
		try {
			Funcionario funcionarioConsultado = null;
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from funcionario where email = ? and senha = ?");

			
			stmt.setString(2, funcionario.getSenha());
			stmt.setString(1, funcionario.getEmail());
			
			
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				funcionarioConsultado = montarObjeto(rs);
			}
			rs.close();
			stmt.close();
			return funcionarioConsultado;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}
