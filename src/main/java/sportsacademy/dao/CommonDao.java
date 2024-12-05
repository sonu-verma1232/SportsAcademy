package sportsacademy.dao;

import sportsacademy.beans.Contact;
import sportsacademy.beans.*;
import sportsacademy.databaseinfo.DBConnection;

import java.sql.*;
import java.util.*;
public class CommonDao {
	
	public String viewPlanDescription(String pname) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String desc = null;
		
		String selectQuery = "select description from plan where planName=?";
		
		try {
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, pname);
			rs = ps.executeQuery();
			rs.next();
			desc = rs.getString("description");
			
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if(rs!=null)
					rs.close();
				
				if(ps!=null)
					ps.close();
				
				if(con!=null)
					con.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return desc;
	}
	
	public ArrayList<Plan> viewPlans(){
		
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		ArrayList<Plan> planList = new ArrayList<>();
		
		String selectQuery = "select * from plan ";
		
		try {
			ps = con.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			while(rs.next()) {
				String plan = rs.getString("planName");
				String charge = rs.getString("charge");
				String duration = rs.getString("duration");
				String des = rs.getString("description");
				
				Plan p = new Plan(plan, charge, duration, des);
				planList.add(p);
			}
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		
		finally {
			try {
				if(rs!=null)
					rs.close();
				
				if(ps!=null)
					ps.close();
				
				if(con!=null)
					con.close();
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return planList;
	}
	

	public int addContact(Contact c) {

		int status = 0;
		String cname = c.getName();
		String email = c.getEmail();
		String phone = c.getPhone();
		String question = c.getQuestion();

		Connection con = DBConnection.openConnection(); // address of sports_db

		PreparedStatement ps = null; // interface

		String insertQuery = "insert into contact(name, email, phone, question)values(?,?,?,?)";

		try {

			ps = con.prepareStatement(insertQuery); // compile the insertQuery and give address to ps
			// passes the query to DBMS and DBMS parser parse the query and compile the
			 
			// query and store the compiled query into buffer and assign address of buffer to ps

			ps.setString(1, cname); // it will set in name column of contact table
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, question);
		//	System.out.println(ps);

			status = ps.executeUpdate(); // it will insert the data into contact table

		} 
		catch (SQLException se) 
		{
			se.printStackTrace();
		}

		finally {

			try {

				if (ps != null) {
					ps.close();
				}

				if (con != null) {
					con.close();
				}

			} 
			catch (SQLException se) 
			{
				se.printStackTrace();
			}

		}

		return status;
	}

}
