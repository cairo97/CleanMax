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
			String sql = "INSERT INTO servico (data,hora,servico_id,placa,status) VALUES (?,?,?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			if (agendamento.getData() != null) {
				stmt.setDate(1, new java.sql.Date(agendamento.getData().getTime()));
			} else {
				stmt.setDate(1, null);
			}
			stmt.setDouble(2, agendamento.getHora());
			stmt.setInt(3, agendamento.getServico().getId());
			
			stmt.setString(4, agendamento.getPlaca());
			stmt.setString(5, agendamento.getStatus());
			
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
