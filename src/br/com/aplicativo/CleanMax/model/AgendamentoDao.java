package br.com.aplicativo.CleanMax.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
			String sql = "INSERT INTO agendamento (data,hora,servico_id,placa,status) VALUES (?,?,?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			if (agendamento.getData() != null) {
				stmt.setDate(1, new java.sql.Date(agendamento.getData().getTime()));
			} else {
				stmt.setDate(1, null);
			}
			stmt.setInt(2, agendamento.getHora());
			stmt.setInt(3, agendamento.getServico().getId());
			
			stmt.setString(4, agendamento.getPlaca());
			stmt.setString(5, agendamento.getStatus());
			
			stmt.execute();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public Agendamento buscarPorId(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM agendamento WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Agendamento agendamento = new Agendamento();

			while (rs.next()) {

				agendamento.setId(rs.getInt("id"));
				agendamento.setData(rs.getDate("data"));
				agendamento.setHora(rs.getInt("hora"));
				
				ServicoDao dao = new ServicoDao();
				Servico servico = dao.buscarPorId(rs.getInt("Servico_id"));
		      	agendamento.setServico(servico);
				
				
				agendamento.setPlaca(rs.getString("placa"));
				agendamento.setStatus(rs.getString("status"));

				
			}

			rs.close();
			stmt.close();
			connection.close();

			return agendamento;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
	public List<Agendamento> listar() {

		try {
			List<Agendamento> listarAgendamento = new ArrayList<Agendamento>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM agendamento ORDER BY data");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Agendamento agendamento = new Agendamento();
				
				agendamento.setId(rs.getInt("id"));
				
				
				
				agendamento.setData(rs.getDate("data"));
				agendamento.setHora(rs.getInt("hora"));
				ServicoDao dao = new ServicoDao();
				Servico Servico = dao.buscarPorId(rs.getInt("servico_id"));
				agendamento.setServico(Servico);
		
				agendamento.setPlaca(rs.getString("placa"));
				agendamento.setStatus(rs.getString("status"));
			
				
				
				listarAgendamento.add(agendamento);
			}

			rs.close();
			stmt.close();
			connection.close();

			return listarAgendamento;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
	
	public void remover(Agendamento agendamento) {

		try {

		    String sql = "DELETE FROM agendamento WHERE id = ?";
		    PreparedStatement stmt = connection.prepareStatement(sql);
		    
		    stmt.setInt(1, agendamento.getId());
		    
		    stmt.execute();
		    stmt.close();
		    connection.close();

		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
	    }
	
	public Agendamento buscarPorIda(int id) {

		try {

			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM funcao WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Agendamento agendamento = new Agendamento();

			while (rs.next()) {
                
				agendamento.setId(rs.getInt("id"));
				agendamento.setDescricao(rs.getString("descricao"));

			}

			rs.close();
			stmt.close();
			connection.close();

			return agendamento;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
	}


