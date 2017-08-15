package br.com.aplicativo.CleanMax.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.aplicativo.CleanMax.model.Usuario;
import br.com.aplicativo.CleanMax.model.UsuarioDao;

@Controller
public class HomeController {

	
	@RequestMapping("/login")
	public String LoginCliente() {
		
		return "login/login";
}

   @RequestMapping("/home")
   public String TelaInicial() {
	
	return "telaInicial/Index";
}
   
   @RequestMapping("efetuarLogin")
   public String efetuarLogin(Usuario usuario, HttpSession session, Model
   model) {
   UsuarioDao dao = new UsuarioDao();
   Usuario usuarioLogado = dao.buscarUsuario(usuario);
   if (usuarioLogado != null) {
   session.setAttribute("usuarioLogado", usuarioLogado);
   return "principal/home";
   }
   model.addAttribute("msg", "Não foi encontrado um usuário com o login e senha informados.");
   return "index";
   }
   
}
