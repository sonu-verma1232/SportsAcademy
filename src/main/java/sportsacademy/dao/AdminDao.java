package sportsacademy.dao;

import java.sql.*;
import java.util.ArrayList;

import sportsacademy.beans.Contact;
import sportsacademy.beans.FeedBack;
import sportsacademy.beans.Member;
import sportsacademy.beans.Notice;
import sportsacademy.beans.Plan;
import sportsacademy.databaseinfo.DBConnection;

public class AdminDao {

	public ArrayList<Member> planWiseMember(String pname) {

		ArrayList<Member> memberList = new ArrayList<>();
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String selectQuery = "select * from member where plan_name=?";

		try {

			ps = con.prepareStatement(selectQuery);
			ps.setString(1, pname);
			rs = ps.executeQuery();

			while (rs.next()) {

				Member m = new Member();
				m.setName(rs.getString("name"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				m.setSports_name(rs.getString("sports_name"));
				memberList.add(m);

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}

		return memberList;
	}

	public ArrayList<Plan> viewPlans() {
		ArrayList<Plan> planList = new ArrayList<>();
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String selectQuery = "select planName from plan";

		try {
			ps = con.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			while (rs.next()) {
				Plan p = new Plan();
				p.setPlanName(rs.getString("planName"));
				planList.add(p);

			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();

				if (ps != null)
					ps.close();

				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return planList;
	}

	public ArrayList<Notice> viewNotices() {

		ArrayList<Notice> noticeList = new ArrayList<>();
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String selectQuery = "select * from notice order by date desc limit 10";
		// limit 10 => used to show only 10 notices from table on the basis of
		// date(descending order)

		try {
			ps = con.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			while (rs.next()) {

				Notice n = new Notice();

//				   int id = rs.getInt("id"); 
//				   n.setId(id);
//				 
				n.setId(rs.getInt("id"));
				n.setContent(rs.getString("contents"));
				n.setDate(rs.getDate("date"));

				noticeList.add(n);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (rs != null)
					rs.close();

				if (ps != null)
					ps.close();

				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return noticeList;
	}

	public ArrayList<Contact> allContacts() {

		ArrayList<Contact> contactList = new ArrayList<>();
		// type safe arrayList because it will store only contact bean data
		// <> is known as generics -> parameterised

		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String selectQuery = "select * from contact order by name"; // order by is used for sorting
		// desc = used to show data in descending order

		try {

			ps = con.prepareStatement(selectQuery);
			rs = ps.executeQuery(); // to execute select query

			while (rs.next()) { // it will put the cursor in the resultant data set and returns true
				// if there is data
				int cid = rs.getInt("id"); // fetch the data from Id column
				String cname = rs.getString("name");
				String cemail = rs.getString("email");
				String cphone = rs.getString("phone");
				String cquestion = rs.getString("question");

				Contact c = new Contact(cid, cname, cemail, cphone, cquestion);
				// bean class object and setting values of a row from table

				contactList.add(c); // adding object of contact class in the contact ArrayList

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		// finally code

		finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}

		return contactList; // returning ArrayList
	}

	// all feedback code
	public ArrayList<FeedBack> allFeedback() {

		ArrayList<FeedBack> list = new ArrayList<>();
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "select * from feedback";

		try {
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			// id, name, email, rating, remark, date

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String rating = rs.getString("rating");
				String remark = rs.getString("remark");
				Date d = rs.getDate("date");

				FeedBack fb = new FeedBack(id, name, email, rating, remark, d);
				list.add(fb);

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return list;
	}

	public ArrayList<FeedBack> viewFeedback() {

		ArrayList<FeedBack> list = new ArrayList<>();
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;

		String query = "select * from feedback where rating='5' order by date limit 6";

		try {
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			// id, name, email, rating, remark, date

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String rating = rs.getString("rating");
				String remark = rs.getString("remark");
				Date d = rs.getDate("date");

				FeedBack fb = new FeedBack(id, name, email, rating, remark, d);
				list.add(fb);

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return list;
	}

	public ArrayList<Member> allMember() {

		ArrayList<Member> memberList = new ArrayList<>();

		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String selectQuery = "select * from member order by name";

		try {

			ps = con.prepareStatement(selectQuery);
			rs = ps.executeQuery();
			// member_id, password, name, email, phone, address, sports_name, plan_name,
			// date

			while (rs.next()) {
				String id = rs.getString("member_id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String spName = rs.getString("sports_name");
				String pName = rs.getString("plan_name");
				Date date = rs.getDate("date");

				Member m = new Member(id, name, email, phone, address, spName, pName, date);
				memberList.add(m);
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (rs != null)
					rs.close();

				if (ps != null)
					ps.close();

				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return memberList;

	}

	public int deleteContact(String[] idArray) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String deleteQuery = "delete from contact where id=?";

		try {
			ps = con.prepareStatement(deleteQuery);

			con.setAutoCommit(false);

			for (int i = 0; i < idArray.length; i++) {
				ps.setInt(1, Integer.parseInt(idArray[i]));
				// System.out.println(ps);

				// int x = ps.executeUpdate();// go to DBMS for single Query and if we have
				// multiple data then
				// processing of programming will be slow
				// => go to DBMS for each query executtion

				ps.addBatch(); // adding data to buffer
			}
			int flag = 1;
			int[] deleteStatus = ps.executeBatch(); // go at once to DBMS
			for (int i = 0; i < deleteStatus.length; i++) {
				if (deleteStatus[i] < 0) {
					flag = 0;
					break;
				}
			}

			if (flag == 1) {
				con.setAutoCommit(true);
				return 1;
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return 0;
	}

	public int addPlan(Plan p) {

		String planName = p.getPlanName();
		String charge = p.getCharge();
		String duration = p.getDuration();
		String description = p.getDescription();

		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;

		String insert = "insert into plan(planName,charge,duration,description) values(?,?,?,?)";

		try {
			ps = con.prepareStatement(insert);
			ps.setString(1, planName);
			ps.setString(2, charge);
			ps.setString(3, duration);
			ps.setString(4, description);

			return ps.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return 0;
	}

	public ArrayList<Plan> allPlan() {

		ArrayList<Plan> planList = new ArrayList<>();

		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String selectQuery = "select * from plan";

		try {

			ps = con.prepareStatement(selectQuery);
			rs = ps.executeQuery();

			while (rs.next()) {
				String planName = rs.getString("planName");
				String charge = rs.getString("charge");
				String duration = rs.getString("duration");
				String description = rs.getString("description");

				Plan p = new Plan(planName, charge, duration, description);
				planList.add(p);

			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (rs != null)
					rs.close();

				if (ps != null)
					ps.close();

				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return planList;

	}

	public int deletePlan(String plan[]) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;

		String delete = "delete from plan where planName=?";

		try {
			ps = con.prepareStatement(delete);
			con.setAutoCommit(false);

			for (int i = 0; i < plan.length; i++) {
				ps.setString(1, plan[i]);
				ps.addBatch();
			}

			int flag = 1;
			int[] deleteStatus = ps.executeBatch();
			for (int i = 0; i < deleteStatus.length; i++) {
				if (deleteStatus[i] < 0) {
					flag = 0;
					break;
				}
			}

			if (flag == 1) {
				con.setAutoCommit(true);
				return 1;
			}

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return 0;
	}

	public int addNotice(Notice n) {
		Connection con = DBConnection.openConnection();
		PreparedStatement ps = null;
		String insertQuery = "insert into notice(id, contents, date) values(?,?,?)";
		try {
			ps = con.prepareStatement(insertQuery);
			ps.setInt(1, n.getId());
			ps.setString(2, n.getContent());
			ps.setDate(3, n.getDate());

			return ps.executeUpdate();

		} catch (SQLException se) {
			se.printStackTrace();
		}

		finally {
			try {
				if (ps != null)
					ps.close();

				if (con != null)
					con.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		return 0;
	}

}
