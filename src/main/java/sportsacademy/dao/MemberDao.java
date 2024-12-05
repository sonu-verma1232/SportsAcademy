package sportsacademy.dao;

import java.sql.*;

import javax.servlet.RequestDispatcher;

import sportsacademy.beans.FeedBack;
import sportsacademy.beans.Member;
import sportsacademy.databaseinfo.DBConnection;

public class MemberDao {
	
	// Member profile code
	public Member viewProfile(String mid) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String selectQuery = "select * from member where member_id=?";
		
		Member m = null;
		
		try {
			//member_id, password, name, email, phone, address, sports_name, plan_name, date
			ps = con.prepareStatement(selectQuery);
			ps.setString(1,mid);
            rs = ps.executeQuery();
            rs.next();
             m = new Member(mid,rs.getString("name"),rs.getString("email"),rs.getString("phone"),rs.getString("address"),rs.getString("sports_name"),rs.getString("plan_name"));
            
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
		return m;
	}

	public int addFeedback(FeedBack fb) {
		int status = 0;
		String name = fb.getName();
		String email = fb.getEmail();
		String rating = fb.getRating();
		String remark = fb.getRemark();
		Date date = fb.getDate();
		
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String insertQuery = "insert into feedback(name, email, rating, remark, date) values(?,?,?,?,?)";
		
		try {
			
			ps = con.prepareStatement(insertQuery);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, rating);
			ps.setString(4,remark);
			ps.setDate(5, date);
			
		//	System.out.println(ps);
			
			status = ps.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				if(ps!=null) {
					ps.close();
				}
				if(con != null) {
					con.close();
				}
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return status;
	}

	public boolean login(String id, String pswd) {
		
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String selectQuery = "select * from member where member_id=? and password=?";
		
		try {
			
			ps = con.prepareStatement(selectQuery);
			ps.setString(1, id);
			ps.setString(2,pswd);
			
			rs = ps.executeQuery();
			
			if(rs.next())       // if id and password exists in the table, it return true
				return true;     // login method is returning true 
			
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
		
		return false;
	}

	public int register(Member m) {
		int status = 0;
		
		
		String memberid = m.getMember_id();
		String pswd = m.getPassword();
		String name = m.getName();
		String email = m.getEmail();
		String phone = m.getPhone();
		String address = m.getAddress();
		String sportName = m.getSports_name();
		String planName = m.getPlan_name();
		Date date = m.getDate();
		
		Connection con = DBConnection.openConnection();
		PreparedStatement ps  = null;
		String insertQuery = "insert into member(member_id, password, name, email, phone, address, sports_name, plan_name, date) values(?,?,?,?,?,?,?,?,?)";
		
		try {
			
			ps = con.prepareStatement(insertQuery);
			ps.setString(1,memberid );
			ps.setString(2,pswd );
			ps.setString(3,name );
			ps.setString(4,email );
			ps.setString(5,phone );
			ps.setString(6,address );
			ps.setString(7,sportName );
			ps.setString(8,planName );
			ps.setDate(9, date);
			
			status = ps.executeUpdate();
			
		}
		catch(SQLException se ) {
			se.printStackTrace();
		}
		
		finally {
			try {
				if(ps!=null)
					ps.close();
				if(con!=null)
					con.close();
				
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		
		
		
		return status;
	}

	public int editProfile(String memId, String email, String phone, String address) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String updateQuery =  "update member set email=?,phone=?,address=? where member_id=?";
		int status=0;
		try {
			ps = con.prepareStatement(updateQuery);
			ps.setString(1, email);
			ps.setString(2, phone);
			ps.setString(3, address);
			ps.setString(4, memId);
			
			status = ps.executeUpdate();
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if(ps!=null)
					ps.close();
				
				if(con!=null) {
					con.close();
				}
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
		}
		return status;
	}

	
	// ajax code method to check member id
	
	public boolean checkId(String id) {
		
	    Connection con = DBConnection.openConnection();
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    
	    String selectQuery = "select member_id from member where member_id=?";
	    
	    try {
	    	ps = con.prepareStatement(selectQuery);
	    	ps.setString(1, id);
	    	System.out.println(ps);
	    	rs = ps.executeQuery();
	    	if(rs.next()) {
	    		return true;      // return true if inputed id exists in the table
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
				
				if(con!=null) {
					con.close();
				}
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}
		}
	    
		return false;
	}

	

}
