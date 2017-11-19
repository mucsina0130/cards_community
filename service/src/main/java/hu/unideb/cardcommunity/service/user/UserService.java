package hu.unideb.cardcommunity.service.user;

import java.util.List;

import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.impl.UserAccountImpl;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.user.api.IUserService;
import hu.unideb.cardcommunity.service.user.model.UserData;


public class UserService implements IUserService {
	private UserAccountDao useraccountimpl = new UserAccountImpl();
	
	@Override
	public UserData findByUserName(String name) {
		List<UserAccount> user = useraccountimpl.findByName(name);
		UserData result = new UserData();
		
		result.setId(user.get(0).getId());
		result.setUserName(user.get(0).getUserName());
		result.setPassword(user.get(0).getPassword());

		return (UserData) result;
	}

}
