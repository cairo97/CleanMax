package br.com.aplicativo.CleanMax.model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDao {
	
	private Connection connection;

	public Usuario buscarUsuario(Usuario usuario) {
		try {
		Usuario usuarioConsultado = null;
		PreparedStatement stmt = this.connection.prepareStatement("select * from usuario where login = ? and senha = ?");
		stmt.setString(1, usuario.getLogin());
		stmt.setString(2, usuario.getSenha());
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
		usuarioConsultado = montarObjeto(rs);
		}
		rs.close();
		stmt.close();
		return usuarioConsultado;
		} catch (SQLException e) {
		throw new RuntimeException(e);
		}
	
}
	
	private Usuario montarObjeto(ResultSet rs) throws SQLException {

		Usuario usuario = new Usuario();
		Usuario.setLogin(rs.getString("login"));
		Usuario.setSenha(rs.getString("senha"));

		return usuario;
	    }

}
