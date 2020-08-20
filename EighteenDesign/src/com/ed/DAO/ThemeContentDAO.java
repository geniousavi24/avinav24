package com.ed.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ed.entity.ThemeContent;



public class ThemeContentDAO {

	public static boolean insertBlog(ThemeContent blogentity) throws Exception{

		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement prst = con.prepareStatement("insert into theme_content (themeType, title, description,price,imagePath) values ( ?, ?, ?,?,?) ");
			prst.setString(1, blogentity.getTitle());
			prst.setString(2, blogentity.getThemeType());
			prst.setString(3, blogentity.getDescription());
			prst.setString(4, blogentity.getPrice());
			prst.setString(5, blogentity.getImagePath());

			int update = prst.executeUpdate();
			if(update>0){
				System.out.println("data inserted successfully");
				return true;
			}
			else{
				System.out.println("data not inserted");
				return false;
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static ThemeContent getDataById(int blogid) throws Exception{

		ThemeContent themeContent = new ThemeContent();
		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement prst = con.prepareStatement("select * from theme_content where id=?");
			prst.setInt(1, blogid);

			ResultSet rs = prst.executeQuery();
			while(rs.next()){
				themeContent = new ThemeContent();
				themeContent.setBlogid(rs.getInt("id"));
				themeContent.setThemeType(rs.getString("themeType"));
				themeContent.setTitle(rs.getString("title"));
				themeContent.setDescription(rs.getString("description"));
				themeContent.setPrice(rs.getString("price"));
				themeContent.setImagePath(rs.getString("imagePath"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}


		return themeContent;	
	} 
	public static boolean deleteThemeContentById(int blogid) throws Exception{
		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement prst = con.prepareStatement("delete  from theme_content where id=?");
			prst.setInt(1, blogid);
			int update = prst.executeUpdate();
			if(update>0){
				System.out.println("data inserted successfully");
				return true;
			}
			else{
				System.out.println("data not inserted");
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}


		return false;	
	} 


	public static List<ThemeContent> getList() throws Exception{

		List<ThemeContent> themeContentList = new ArrayList<>();
		try {
			Connection con = DBConnection.getDBConnection();
			PreparedStatement prst = con.prepareStatement("select * from theme_content");
			ResultSet rs = prst.executeQuery();
			while(rs.next()){
				ThemeContent themeContent = new ThemeContent();
				themeContent.setBlogid(rs.getInt("id"));
				themeContent.setThemeType(rs.getString("themeType"));
				themeContent.setTitle(rs.getString("title"));
				themeContent.setDescription(rs.getString("description"));
				themeContent.setPrice(rs.getString("price"));
				themeContent.setImagePath(rs.getString("imagePath"));
				themeContentList.add(themeContent);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}


		return themeContentList;	
	} 

}
