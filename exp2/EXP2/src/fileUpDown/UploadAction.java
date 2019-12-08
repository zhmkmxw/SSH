/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fileUpDown;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.apache.struts2.ServletActionContext;

public class UploadAction extends ActionSupport{
	//��װ�ļ������������������
	private String title;
	//��װ�ϴ��ļ��������
	private File upload;
	//��װ�ϴ��ļ����͵�����
	private String uploadContentType;
	//��װ�ϴ��ļ���������
	private String uploadFileName;
	//ֱ����struts.xml�ļ������õ�����
	private String savePath;
	//����struts.xml�ļ�����ֵ�ķ���
	public void setSavePath(String value){
		this.savePath = value;
	}

	private String getSavePath() throws Exception {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}	
	public void setTitle(String title) {
		this.title = title; 
	}
	public String getTitle(){
		return this.title; 
	}
	public void setUpload(File upload){
		this.upload = upload; 
	}
	public File getUpload() {
		return this.upload; 
	}

	public void setUploadContentType(String uploadContentType){
		this.uploadContentType = uploadContentType; 
	}
	public String getUploadContentType(){
		return this.uploadContentType; 
	}
	
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName; 
	}
	public String getUploadFileName(){
		return this.uploadFileName; 
	}
	
	public String execute() throws Exception{		
		FileOutputStream fos = new FileOutputStream(getSavePath()+ "\\" + getUploadFileName());        
		FileInputStream fis = new FileInputStream(getUpload());
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = fis.read(buffer))>0){
			fos.write(buffer , 0 , len);
		}
		fos.close();
		return SUCCESS;
	}
}

