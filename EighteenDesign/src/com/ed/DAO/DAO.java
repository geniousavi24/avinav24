package com.ed.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ed.entity.UserDetail;

public class DAO {
	public static boolean insert(UserDetail userDetail)throws Exception{
		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement prepStatement = con.prepareStatement("insert into user_detail(firstName, lastName, email, password, mobile,role ) values (?, ?, ?, ?, ?,?)");
			prepStatement.setString(1, userDetail.getFirstName());
			prepStatement.setString(2, userDetail.getLastName());
			prepStatement.setString(3, userDetail.getEmail());					
			prepStatement.setString(4, userDetail.getPassword());
			prepStatement.setString(5, userDetail.getMobileno());
			prepStatement.setString(6, userDetail.getRole());
			
			int update=prepStatement.executeUpdate();
			if(update>0)
			{
				System.out.println("inserted");
				return true;
			}
			else

			{
				System.out.println("error");
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return false;
	}

	/*--------check_user_id_exist------------*/
	public static boolean findEmailId(String email) throws Exception{
		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement ps = con.prepareStatement("select * from user_detail where email = ?");
			ps.setString(1, email);

			ResultSet result = ps.executeQuery();
			while(result.next()){
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

	public static UserDetail getUserDetail(UserDetail userDetail) 
	{
		UserDetail prs = null;
		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement prepStatement = con.prepareStatement("select * from user_detail where email = ? AND password = ? ");
			prepStatement.setString(1,  userDetail.getEmail());
			prepStatement.setString(2,  userDetail.getPassword());


			ResultSet result = prepStatement.executeQuery();
			while (result.next()) 
			{
				prs = new UserDetail();
				prs.setId(result.getInt("id"));
				prs.setEmail(result.getString("email"));
				prs.setPassword(result.getString("password"));
				prs.setFirstName(result.getString("firstName"));
				prs.setLastName(result.getString("lastName"));
				prs.setMobileno(result.getString("mobile"));
				prs.setMobileno(result.getString("mobile"));
				prs.setRole(result.getString("role"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return prs;
	}
	/*----end----check_user_id_exist------------*/




}