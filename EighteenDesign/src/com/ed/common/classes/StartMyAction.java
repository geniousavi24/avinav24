package com.ed.common.classes;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class StartMyAction extends ActionSupport implements SessionAware
{
	private static final long serialVersionUID = 1L;
	public Map<String, Object> sessionMap;
	public String message;

	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}

	public void setSessionMap(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	
	@Override
	public void setSession(Map<String, Object> sessionMap) 
	{
		// TODO Auto-generated method stub
		this.sessionMap = sessionMap;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
