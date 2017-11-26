package hu.unideb.cardcommunity.service.validation.api;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.impl.UserAccountImpl;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.user.UserService;
import hu.unideb.cardcommunity.service.user.model.UserData;
import hu.unideb.cardcommunity.service.validation.validationService;

public class validationServiceImpl implements validationService{
	private UserAccountDao useraccountimpl = new UserAccountImpl();
	@Override
	public boolean mailValidation(String mailAddress) {
		Pattern mailPattern= Pattern.compile("[a-zA-Z]+[a-zA-Z0-9_\\.-]*@[a-zA-Z]+[a-zA-Z0-9_-]*\\.[a-zA-Z]{2,3}");
		Matcher mailMatcher = mailPattern.matcher(mailAddress);
		boolean b = mailMatcher.matches();
		
		return b;
	}

	@Override
	public boolean userNameValidation(String userName) {
		Pattern userPattern= Pattern.compile("[a-zA-Z]+[a-zA-Z0-9_\\.-]*[a-zA-Z0-9]+");
		Matcher userMatcher = userPattern.matcher(userName);
		boolean b = userMatcher.matches();
		
		return b;
	}

	@Override
	public boolean isTheMailUsed(String mailAddress) {
		try {
			UserAccount user = useraccountimpl.findByMail(mailAddress);
			
			return true;
			
		} catch (Exception e) {			
			return false;
		}
	}

	@Override
	public boolean isTheUserNameUsed(String userName) {
		UserService uServise = new UserService();
		UserData user = uServise.findByUserName(userName);
		if(user.getUserName() == null)
			return false;
		else 
			return true;
	}

}
