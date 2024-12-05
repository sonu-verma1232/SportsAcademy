package sportsacademy.member.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sportsacademy.beans.FeedBack;
import sportsacademy.dao.MemberDao;

@WebServlet("/MemberFeedback")
public class MemberFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MemberFeedback() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String rating = request.getParameter("rating");
		String remark = request.getParameter("remark");
	//	System.out.println(name + email + rating + remark);
		
		java.util.Date d = new Date();
		long dt = d.getTime();
		java.sql.Date sd = new java.sql.Date(dt);
		
		// create object of bean class
		FeedBack fb = new FeedBack();
		fb.setName(name);
		fb.setEmail(email);
		fb.setRating(rating);
		fb.setRemark(remark);
		fb.setDate(sd);
		
		// create object of Dao class
		
		MemberDao dao = new MemberDao();
		int status = dao.addFeedback(fb);    // call method of Dao class
		
		
        String successMessage = "Thank you for your valuable feedback";
		request.setAttribute("message", successMessage);
		RequestDispatcher rd = request.getRequestDispatcher("/member/member_feedback.jsp");
		rd.forward(request, response);             
		
	}

}
