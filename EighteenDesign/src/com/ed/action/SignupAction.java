package com.ed.action;

import com.ed.DAO.*;
import com.ed.common.classes.StartMyAction;
import com.ed.entity.UserDetail;
import com.opensymphony.xwork2.ModelDriven;

public class SignupAction extends StartMyAction implements ModelDriven<UserDetail> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDetail userDetail = new UserDetail();

	

	/*Insert Data  */
	public String insertData(){
		try
		{
			System.out.println(userDetail.getEmail());
			if (DAO.insert(userDetail)) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return SUCCESS;
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
	
}
