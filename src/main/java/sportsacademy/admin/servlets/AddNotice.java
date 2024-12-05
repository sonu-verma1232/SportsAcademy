package sportsacademy.admin.servlets;

import java.io.IOException;
import java.util.Date;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.Notice;
import sportsacademy.dao.AdminDao;

/**
 * Servlet implementation class AddNotice
 */
@WebServlet("/AddNotice")
public class AddNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNotice() {
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
		String notice = request.getParameter("notice");
		
		Date date = new Date();
		long dt = date.getTime();
		java.sql.Date d  = new java.sql.Date(dt);
		
		Notice n = new Notice();
		n.setContent(notice);
		n.setDate(d);
		
		AdminDao dao = new AdminDao();
		int status = dao.addNotice(n);
		
		if(status>0) {
			request.setAttribute("message", "Notice Added Succeessfully!");
			RequestDispatcher rd = request.getRequestDispatcher("/admin/add_notice.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("message", "Something Went Wrong!");
			RequestDispatcher rd = request.getRequestDispatcher("/admin/add_notice.jsp");
			rd.forward(request, response);
		}
		
		
	}

}
