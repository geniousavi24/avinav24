package com.ed.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.imageio.ImageIO;

import com.ed.DAO.ThemeContentDAO;
import com.ed.common.classes.StartMyAction;
import com.ed.entity.ThemeContent;
import com.opensymphony.xwork2.ModelDriven;



public class ThemeContentAction extends StartMyAction implements ModelDriven<ThemeContent>{

	private static final long serialVersionUID = 1L;
	ThemeContent themeContent = new ThemeContent();
	private File uploadFile;
	public static final String imagePathFile = "/opt/eighteenDesign/theme";
	private List<ThemeContent> themeContentList = new ArrayList<>();


	public String insertThemeContent(){
		try {
			System.out.println(themeContent.getTitle());
			if(uploadFile!=null) 
			{
				themeContent.setImagePath(spysrImageUploadFn(generateRandomNumber()));
			}
			if (ThemeContentDAO.insertBlog(themeContent)) {
				return SUCCESS;
			} else {
				return ERROR;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

	public String getThemeContentDetail()
	{
		try {
			if(themeContent.getBlogid() != 0){
				themeContent = ThemeContentDAO.getDataById(themeContent.getBlogid());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}
	public String getThemeContentDataList()
	{
		try {
			themeContentList = ThemeContentDAO.getList();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}
	public String deleteThemeContent()
	{
		boolean flag =false;
		try {
			if(themeContent.getBlogid() != 0){
				flag = ThemeContentDAO.deleteThemeContentById(themeContent.getBlogid());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}


	public static int generateRandomNumber()
	{
		Random random = new Random(System.currentTimeMillis());
		int randomVal1 = 10000+random.nextInt(20000);
		return randomVal1;
	}
	private String spysrImageUploadFn(int id ) 
	{
		String imageName = null;
		try
		{
			if(uploadFile != null)
			{
				String dir = imagePathFile;
				imageName = "u_"+id+".jpg";
				writeImageByFile(uploadFile, imageName, dir);
				imageName = dir+"/u_"+id+".jpg";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return imageName;
	}

	public static boolean writeImageByFile(File file,String imageName,String dir) 
	{
		boolean isSave = false;
		BufferedImage img = null;
		try
		{
			File optDir = new File(dir);
			if (!optDir.exists()) {
				optDir.mkdirs();
			}
			img = ImageIO.read(file);
			File outputPath = new File(optDir.getAbsolutePath()+File.separator+imageName);
			ImageIO.write(img, "jpg",outputPath);
			isSave = true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSave;
	}

	public static boolean deleteImage(String ImagePath) 
	{
		boolean isDelete = false;
		try
		{
			File file = new File(ImagePath);

			if(file.delete())
				isDelete = true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isDelete;
	}


	@Override
	public ThemeContent getModel() {
		// TODO Auto-generated method stub
		return this.themeContent;
	}


	public File getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public void setThemeContentList(List<ThemeContent> themeContentList) {
		this.themeContentList = themeContentList;
	}

	public List<ThemeContent> getThemeContentList() {
		return themeContentList;
	}

	public ThemeContent getThemeContent() {
		return themeContent;
	}

	public void setThemeContent(ThemeContent themeContent) {
		this.themeContent = themeContent;
	}
}
