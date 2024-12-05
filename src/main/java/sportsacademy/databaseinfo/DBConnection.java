package sportsacademy.databaseinfo;

import java.sql.*;
import java.util.ResourceBundle;
public class DBConnection {

	public static Connection con; // interface
	private static ResourceBundle rb;

	public static Connection openConnection() {
		try {
			rb = ResourceBundle.getBundle("sportsacademy/databaseinfo/db_info");
			// given the reference of properties file to rb
			String id = rb.getString("db.userId"); // to fetch the value from file
			String pass = rb.getString("db.userPass");
			String connectionUrl = rb.getString("db.url");
			// System.out.println("database userid "+id);
			// System.out.println("database userPass "+pass );
			// System.out.println("database url "+connectionUrl );
			Class.forName("com.mysql.cj.jdbc.Driver");
			// con =
			// DriverManager.getConnection("jdbc:mysql://localhost:3307/sports_db","root","root1");
			con = DriverManager.getConnection(connectionUrl, id, pass);
		} catch (ClassNotFoundException | SQLException cse) {
			System.out.println(cse);
		}

		return con;
	}

	/*
	 * public static void main(String[] args) { Connection con =
	 * DBConnection.openConnection(); System.out.println(con); }
	 */
}
