package br.com.aplicativo.CleanMax.model;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import br.com.aplicativo.CleanMax.util.ConnectionFactory;

public class AgendamentoDao {
	private Connection connection;

	public AgendamentoDao() {
		try {
			this.connection = (Connection) new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public void salvar(Servico servico) {
		try {
			String sql = "INSERT INTO servico (data,hora,tipoVeiculo_id,tipoServico_id,preco) VALUES (?,?,?,?)";
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
}
