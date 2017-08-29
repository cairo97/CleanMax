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
	
	
	public void salvar(Agendamento agendamento) {
		try {
			String sql = "INSERT INTO agendamento (tipoVeiculo_id,tipoServico_id,preco,data,hora) VALUES (?,?,?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setInt(1, agendamento.getTipoVeiculo().getId());
			stmt.setInt(2, agendamento.getTipoServico().getId());

			if (agendamento.getData() != null) {
				stmt.setDate(4, new java.sql.Date(agendamento.getData().getTime()));
			} else {
				stmt.setDate(4, null);
			}
			stmt.setString(4, agendamento.getPreco());
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
