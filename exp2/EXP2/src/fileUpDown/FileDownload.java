/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fileUpDown;
import java.io.InputStream;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FileDownload extends ActionSupport {
	//ָ���ļ�������·��
    private String path;
    public String getPath() {
        return path;
    }
    public void setPath(String path) {
        this.path = path;
    }
   
    public InputStream getInputStream() throws Exception {
        return ServletActionContext.getServletContext().getResourceAsStream(path);
    }
    public String execute() throws Exception {
        return SUCCESS;
    }
}

