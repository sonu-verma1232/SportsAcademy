package sportsacademy.member.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sportsacademy.dao.MemberDao;

@WebServlet("/MemberLogin")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberLogin() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("userID");
		String pswd = request.getParameter("userPass");
	//	System.out.println(id + pswd);
		// create object of dao class
		MemberDao dao = new MemberDao();
		boolean status = dao.login(id, pswd); // passing data without using bean class
		if (status) {
			HttpSession hs = request.getSession();
			String sessionId = hs.getId();
			hs.setAttribute("key", id);
			hs.setAttribute("role", "member");
			response.sendRedirect("/SportsAcademy/member/member_home.jsp");
		} else {

			String errorMessage = "Invalid Id/Password";
			request.setAttribute("message", errorMessage);
			RequestDispatcher rd = request.getRequestDispatcher("/member/member_login.jsp");
			rd.forward(request, response);
		}
	}

}
