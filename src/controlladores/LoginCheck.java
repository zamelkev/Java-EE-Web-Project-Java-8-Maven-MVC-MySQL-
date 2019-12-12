package controlladores;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import modelo.Modelo;
import modelo.Persona;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		//Chris: Ajax login 
		//Gson gs = new Gson();
		
		//Persona persona = gs.fromJson(request.getParameter("usuario"), Persona.class);
		
		
	
		//Modelo m = new Modelo();
		
		/*Persona pu = m.getPersonaUsuario(persona);
		
		PrintWriter out = response.getWriter();
		if(pu != null ) {
			// request.getRequestDispatcher("login.jsp").forward(request, response);
			out.print("UsuarioValido");
			session.setAttribute("usuario", persona);
		}else {
			// request.getRequestDispatcher("reserva.jsp").forward(request, response);
			out.print("usuarioNoValido");
		}*/
		// Chris : con session
		String usuario  = request.getParameter("user");
		String password = request.getParameter("password");
		
		Modelo m = new Modelo();
	
		Persona pu = new Persona("usuario", "password");
		PrintWriter out = response.getWriter();
		if (pu != null && session.getAttribute("usuario") == null) {
			out.print("Welcome, " + usuario);
			session.setAttribute("usuario", usuario);
			session.setMaxInactiveInterval(120);
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}else {
			//out.print("Sorry, username or password error!");  
			//request.getRequestDispatcher("login.jsp").forward(request, response);
		       RequestDispatcher rd = request.getRequestDispatcher("login.html");
		         out.println("<font color=red>Either user name or password is wrong.</font>");
		         rd.include(request, response);
		}
		
	}

}
