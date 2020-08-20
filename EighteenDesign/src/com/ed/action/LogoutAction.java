package com.ed.action;

import java.util.Map;

import com.ed.common.classes.StartMyAction;
import com.opensymphony.xwork2.ActionContext;

public class LogoutAction extends StartMyAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String logout() throws Exception{
		sessionMap.remove("email");
		  sessionMap.remove("userDetail");
		
		return SUCCESS;
		
	} 
	
}
