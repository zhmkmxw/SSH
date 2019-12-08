/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package validate;

/**
 *
 * @author Administrator
 */
import com.opensymphony.xwork2.ActionSupport;

public class RegistAction1 extends ActionSupport{
    private String userName;
    private String userPassword;
    private int userAge;
    private String userTelephone;
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getUserPassword() {
        return userPassword;
    }
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }
    public int getUserAge() {
        return userAge;
    }
    public void setUserAge(int userAge) {
        this.userAge = userAge;
    }
    public String getUserTelephone() {
        return userTelephone;
    }
    public void setUserTelephone(String userTelephone) {
        this.userTelephone = userTelephone;
    } 
    public void validate(){  
        if(userName==null ||userName.length()<6 || userName.length()>16){
            addFieldError("userName","�û������ĳ��Ȳ�����Ҫ��,6-16λ��"); 
	}
        if(userPassword.length()>16||userPassword.length()<6){
            addFieldError("userPassword","���볤�Ȳ�����Ҫ��6-16λ��");
        }
        if(userAge>130||userAge<1){
            addFieldError("userAge","���䲻����Ҫ��1-130��");
        }
        if(userTelephone.length()!=8){
            addFieldError("userTelephone","�绰���벻����Ҫ��8λ");
        }  
    }
    public String execute(){
        return SUCCESS;
    }
}

