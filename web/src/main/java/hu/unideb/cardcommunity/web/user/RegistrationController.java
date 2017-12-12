package hu.unideb.cardcommunity.web.user;

import java.io.Serializable;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.primefaces.component.password.Password;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.mail.MailSenderValidatorAutoConfiguration;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.service.user.UserService;
import hu.unideb.cardcommunity.service.user.api.IUserService;
import hu.unideb.cardcommunity.service.user.model.UserData;
import hu.unideb.cardcommunity.service.validation.api.validationServiceImpl;
import hu.unideb.cardcommunity.web.session.MySessionInfo;

@Component
@Scope("view")
public class RegistrationController implements Serializable {
	private IUserService us= new UserService();
	private String userName;
	private String password;
	private String email;

	public String register() {
		if(userName==null || userName.trim().length()== 0) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Hiba", "Adj meg egy nevet"));
			return null;
		}
		if(password==null || password.trim().length()== 0) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Hiba", "Adj meg egy jelszót"));
			return null;
		}
		if(email==null || email.trim().length()== 0) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Hiba", "Adj meg egy email címet"));
			return null;
		}
		if(!new validationServiceImpl().mailValidation(email)) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Hiba", "Hibás email cím"));
			return null;
		}
		us.findByUserName(userName);
		if(us.findByUserName(userName)!=null) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Hiba", "Létezik ilyen felhasználó"));
			return null;
		}
		UserData newUser = new UserData();
		newUser.setUserName(userName);
		newUser.setPassword(password);
		newUser.setMailAddress(email);
		try {
			us.saveUser(newUser);
			return "index";
		} catch (Exception e) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Hiba", "Hiba történt a mentés közben"));
			e.printStackTrace();
			return null;
		}
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
