package sportsacademy.admin.servlets;

import java.io.IOException;
import sportsacademy.databaseinfo.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("adminId").trim();
		String pass = request.getParameter("adminPass");
//		System.out.println(id + pass);

		if (id.equalsIgnoreCase("admin") && pass.equals("precursor")) {

			HttpSession hs = request.getSession(); // it will create a session
			String sessionId = hs.getId();
//			System.out.println("Session id is " + sessionId);

//			hs.setMaxInactiveInterval(180);    // it will take time in seconds

			hs.setAttribute("sessionKey", id); // setting the attribute in session scope
			hs.setAttribute("role", "admin");

			response.sendRedirect("/SportsAcademy/admin/admin_home.jsp"); // it redirects the browser to another URL
		} else {
			/* String errorMessage = "Invalid Id/Password"; */

			request.setAttribute("message", Messages.LOGIN_ERROR); // setting message in request scope

			RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp"); // relative path
			rd.forward(request, response);
		}

	}

}
