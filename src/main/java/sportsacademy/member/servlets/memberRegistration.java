package sportsacademy.member.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.Member;
import sportsacademy.dao.MemberDao;

import java.sql.Date;

/**
 * Servlet implementation class memberRegistration
 */
@WebServlet("/memberRegistration")
public class memberRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id = request.getParameter("mid");
//		 System.out.println("on server memeber id is "+id);
		 
		 response.setContentType("text/html");
		 PrintWriter pw = response.getWriter();
		 
		 MemberDao dao = new MemberDao();
		 
		 boolean status = dao.checkId(id);
		 
		 if(status)          // Dao code here
		 {
			 pw.print("User Id Already Exists");  // server response to browser
		 }
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// fetch values from other controls
		String member_id = request.getParameter("id");
		String password = request.getParameter("pass");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String plan_name = request.getParameter("plan");
		
//       System.out.println(member_id+password+name+email+phone+address+plan_name);
		
		// fetch values from checkbox
		String [] spName = request.getParameterValues("sports");
		
		String sp_name = "";
		for(String sp : spName) {
			sp_name = sp_name+sp+",";
//			System.out.println(sp);
		}
//		System.out.println(sp_name);    // pass this in constructor
		
		// conversion of java.util date into sql date
		java.util.Date d = new java.util.Date();
//		System.out.println("util date "+ d);
		long dt = d.getTime();
//		System.out.println(dt);
		java.sql.Date sd = new java.sql.Date(dt);
 //		System.out.println("sql date "+sd); // pass this in constructor
 		
 		// creating object of the bean class
 	    Member m = new Member(member_id,password,name, email,phone,address,sp_name,plan_name,sd);
 	    
 	    // creating object of dao class
 	    
 	    MemberDao dao = new MemberDao();
 	    int status = dao.register(m);
 		
		/*
		 * String successMessage = "Thank you for registration!";
		 * request.setAttribute("message", successMessage); RequestDispatcher rd =
		 * request.getRequestDispatcher("/member/member_registration.jsp");
		 * rd.forward(request, response);
		 */
 	    
 	    if(status>0)
 	    {
 	    	response.sendRedirect("/SportsAcademy/member/member_login.jsp");
 	    }
		
	}

}
