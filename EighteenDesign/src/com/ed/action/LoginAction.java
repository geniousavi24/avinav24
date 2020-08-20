package com.ed.action;

import java.util.ArrayList;
import java.util.List;

import com.ed.DAO.DAO;
import com.ed.DAO.ThemeContentDAO;
import com.ed.common.classes.StartMyAction;
import com.ed.entity.ThemeContent;
import com.ed.entity.UserDetail;
import com.opensymphony.xwork2.ModelDriven;;

public class LoginAction extends StartMyAction implements ModelDriven<UserDetail> {
	private static final long serialVersionUID = 1L;
	UserDetail userDetail= new UserDetail();
	private boolean adminFlag=false;
	private List<ThemeContent> themeContentList = new ArrayList<>();

	public String authenticate(){
		boolean result = false;
		try {
			System.out.println(userDetail.getEmail()+" "+userDetail.getPassword());
			result = DAO.findEmailId(userDetail.getEmail());
			if(result){
				userDetail = DAO.getUserDetail(userDetail);
				if(userDetail != null)
				{
					sessionMap.put("userDetail",userDetail);
					sessionMap.put("email",userDetail.getEmail());
					if(adminFlag)
					{
						if (userDetail.getRole()!=null && userDetail.getRole().equalsIgnoreCase("ADMIN"))
						{
//							themeContentList = ThemeContentDAO.getList();
							return "success-admin"; 
						}
						else
						{
							message = "Your Psssword incorrect";
							return "error-admin";
						}
					}
					// Normal User Login
					else if (userDetail.getRole()!=null && !userDetail.getRole().equalsIgnoreCase("ADMIN"))
					{
						return "success"; 
					}
					else
					{
						message = "This email not exist";
						return ERROR;
					}
				}
				else
				{
					message = "Your Psssword incorrect";
					return ERROR;
				}

			}
			else
			{
				System.out.println("error");
				message = "This email not exist";
				return ERROR;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	public String home(){
		if(sessionMap.get("userDetail")!=null && sessionMap.get("userDetail")!=null)
		{
			userDetail = (UserDetail) sessionMap.get("userDetail");
			if (userDetail.getRole()!=null && userDetail.getRole().equalsIgnoreCase("ADMIN"))
			{
				return SUCCESS;
			}
		}
		else {
			return ERROR;
		}
		return ERROR;
	}

	public UserDetail getProcess() {
		return userDetail;
	}

	public void setProcess(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	@Override
	public UserDetail getModel() {
		// TODO Auto-generated method stub
		return this.userDetail;
	}

	public boolean isAdminFlag() {
		return adminFlag;
	}

	public void setAdminFlag(boolean adminFlag) {
		this.adminFlag = adminFlag;
	}

	public List<ThemeContent> getThemeContentList() {
		return themeContentList;
	}

	public void setThemeContentList(List<ThemeContent> themeContentList) {
		this.themeContentList = themeContentList;
	}

}

