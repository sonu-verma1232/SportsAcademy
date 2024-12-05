package sportsacademy.admin.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.Plan;
import sportsacademy.dao.AdminDao;

/**
 * Servlet implementation class AddPlan
 */
@WebServlet("/AddPlan")
public class AddPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPlan() {
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
		String planName = request.getParameter("planName");
		String charge = request.getParameter("charge");
		String duration = request.getParameter("duration");
		String description = request.getParameter("description");
		
		System.out.println(planName+charge+duration+description);
		
		Plan p = new Plan(planName, charge, duration, description);
		
		AdminDao dao = new AdminDao();
		int status = dao.addPlan(p);
		
		if(status>0) {
		     response.sendRedirect("/SportsAcademy/admin/add_plan.jsp");
		}
	}

}
