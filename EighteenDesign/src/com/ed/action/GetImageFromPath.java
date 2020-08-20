package com.ed.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class GetImageFromPath {

	public void getImage() throws Exception
	{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("image/jpg");
		response.setHeader("Cache-Control", "no-cache");
		String imgPath = String.valueOf(request.getParameter("imgpath"));
		if(imgPath != null)
		{	
			OutputStream out = null;
			File file = new File(imgPath);
			response.setContentLength((int)file.length());
			FileInputStream in = new FileInputStream(file);
			byte[] buf = new byte[2048];
			int count = 0;
			try
			{
				out = response.getOutputStream();
				// Copy the contents of the file to the output stream
				while ((count = in.read(buf)) >= 0) {
					out.write(buf, 0, count);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			finally
			{
				try{out.close();}catch(Exception e){}
				try{in.close();}catch(Exception e){}
			}
		}
	}


}
