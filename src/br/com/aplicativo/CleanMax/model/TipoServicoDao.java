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
	
	
}
