package com.ed.entity;


public class ThemeContent {
	
	private int blogid;
	private String title;
	private String themeType;
	private String description;
	private String price;
	private String imagePath;
	
	
	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getThemeType() {
		return themeType;
	}
	public void setThemeType(String themeType) {
		this.themeType = themeType;
	}
	
}
