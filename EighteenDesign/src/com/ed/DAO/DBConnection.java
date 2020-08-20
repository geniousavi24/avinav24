package com.ed.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static Connection con;
	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
		try	
		{
			Class.forName("com.mysql.jdbc.Driver");
			String URL = "jdbc:mysql://localhost:3306/eighteen_design?"+"user=root&password=password";
			if(con==null)
				con = DriverManager.getConnection(URL);
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	return con;
}
 public static void main(String a[]) throws ClassNotFoundException, SQLException
 {
	 getDBConnection();
	 
 }



}
