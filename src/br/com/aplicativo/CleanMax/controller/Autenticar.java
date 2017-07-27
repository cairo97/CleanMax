package br.com.aplicativo.CleanMax.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Autenticar")
public class Autenticar extends HttpServlet {

	private static final long serialVersionUID = 5L;

	public Autenticar() {

        super();

    }

	protected void doGet(HttpServletRequest request,

			HttpServletResponse response) throws ServletException, IOException {

		// Mostra pagina HTML

		response.setContentType("text/html");

		PrintWriter html = response.getWriter();
		
		html.println("<html>");
		
		html.println("<center>");

		html.println("<body>");

		html.println("<h2>Login: </h2>");

		// Formulário processa este mesmo Servlet e o método DoPost

		html.println("<form action='Autenticar' method='post'>");

		html.println("Nome  : <input type='text' name='nome' size ='40' /> <br>");

		html.println("Senha : <input type='password' name='senha' size ='40' /> ");

		html.println("<br>");
		
		html.println("<input type='submit' name='login' value='Login'/> <br>");

		html.println("</form>");

		html.println("</body>");
		
		html.println("</center>");

		html.println("</html>");

	}

	protected void doPost(HttpServletRequest request,

			HttpServletResponse response) throws ServletException, IOException {

		String usuario = request.getParameter("nome");

		String senha = request.getParameter("senha");

		// Verifica usuario e senha

		// provavelmente você utilizará um banco de dados

		// Neste exemplo utilizaremos valores fixos

		if (usuario.equals("adm") && senha.equals("123")) {

			request.getSession().setAttribute("usuario", usuario);

			response.sendRedirect("telaInicial/Index");

		}

		else {

			response.sendRedirect("Autenticar");

		}

	}

	@WebServlet("/Sair")

	public class Sair extends HttpServlet {

		private static final long serialVersionUID = 1L;

		public Sair() {

			super();

		}

		protected void doGet(HttpServletRequest request,

				HttpServletResponse response) throws ServletException, IOException {

			// Invalida sessão e redireciona para login

			request.getSession().invalidate();

			response.sendRedirect("Autenticar");

		}

		protected void doPost(HttpServletRequest request,

				HttpServletResponse response) throws ServletException, IOException {

		}

	}

	@WebServlet("/AreaComunidade")

	public class AreaComunidade extends HttpServlet {

	    private static final long serialVersionUID = 1L;

	 

	    public AreaComunidade() {

	        super();

	    }

	 

	    protected void doGet(HttpServletRequest request,

	            HttpServletResponse response) throws ServletException, IOException {

	 

	        // Mostra pagina HTML

	        response.setContentType("text/html");

	 

	        PrintWriter html = response.getWriter();

	 

	        String usuario = (String) request.getSession().getAttribute("usuario");

	 

	        if (usuario != null) {

	            html.println("<html>");

	            html.println("<body>");

	            html.println("<h2>Area da Comunidade - Java  </h2>");

	            html.println("<h3>Bem-vindo: " + usuario + "</h3>");

	            html.println("<p><a href='Sair'>Sair</a></p>");

	            html.println("</body>");

	            html.println("</html>");

	        }

	        else

	        {

	            response.sendRedirect("Autenticar");

	        }

	    }

	 

	    protected void doPost(HttpServletRequest request,

	            HttpServletResponse response) throws ServletException, IOException {

	    }
}
}
