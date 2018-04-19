package chicago;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chicago.ChicagoServlet;

/**
 * Servlet implementation class ChicagoServlet
 */
@WebServlet("/ChicagoServlet")
public class ChicagoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static Logger log = LogManager.getLogger(ChicagoServlet.class);
	
	public ChicagoServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String branch = request.getParameter("branch");
		String age = request.getParameter("age");
		String pic = request.getParameter("pic");
		System.out.println(pic);
		DBHelper dbhelp = new DBHelper();

		try {
			if (branch != null) {
				ArrayList<ChicagoUsers> alusers = dbhelp.getUsersBranch(branch);
				request.setAttribute("alusers", alusers);
				RequestDispatcher rd = request.getRequestDispatcher("/users.jsp");
				rd.forward(request, response);

			} else if (age != null) {
				ArrayList<ChicagoUsers> alusers = dbhelp.getUsersAge(age);
				request.setAttribute("alusers", alusers);
				RequestDispatcher rd = request.getRequestDispatcher("/users.jsp");
				rd.forward(request, response);
				
			} else if (pic != null) {
				ArrayList<ChicagoUsers> alusers = dbhelp.getUsersName(pic);
				System.out.println(alusers.size());
				request.setAttribute("alusers", alusers);
				RequestDispatcher rd = request.getRequestDispatcher("/users.jsp");
				rd.forward(request, response);
				
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/index.html");
				rd.forward(request, response);
				log.debug("Oops, something happened. Redirected to the homepage.");
				
			}
		} catch (ClassNotFoundException | SQLException e) {
			log.debug("This is a debug message");
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
