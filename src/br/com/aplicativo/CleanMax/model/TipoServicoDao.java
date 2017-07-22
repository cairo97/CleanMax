package br.com.aplicativo.CleanMax.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

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
		
				
	
	
}
