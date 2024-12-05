package sportsacademy.common.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Demo")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Demo() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = "Scott";
		int age = 21;
		System.out.println(name+age);
		
		PrintWriter pw = response.getWriter();
		
		response.setContentType("text/html");
		pw.println("Hello Servlet");
		pw.println("<h1>Hello "+name+"</h1>");
		pw.println("<h2>Your age is "+age+"</h2>");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
