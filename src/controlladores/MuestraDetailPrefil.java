package controlladores;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Modelo;
import modelo.Persona;

/**
 * Servlet implementation class MuestraDetailPrefil
 */
@WebServlet("/MuestraDetailPrefil")
public class MuestraDetailPrefil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MuestraDetailPrefil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//String usuario  = request.getParameter("user");
		//String password = request.getParameter("password");
		int personaId = Integer.parseInt(request.getParameter("id"));
		Modelo m = new Modelo();
		//Persona persona = m.getPersonaUsuPwd(usuario, password);
		Persona persona = m.getPersonaId(personaId);
		request.setAttribute("persona", persona);
		//request.getRequestDispatcher("welcome.jsp").forward(request, response);
		
		String page = "/welcome.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
