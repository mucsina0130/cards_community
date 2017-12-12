package hu.unideb.cardcommunity.service.user;

import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.impl.UserAccountImpl;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.user.api.IUserService;
import hu.unideb.cardcommunity.service.user.model.UserData;


public class UserService implements IUserService {
	private UserAccountDao useraccountimpl = new UserAccountImpl();
	
	@Override
	public UserData findByUserName(String name) {
		UserData result = new UserData();
		try {
			UserAccount user = useraccountimpl.findByName(name);
			
			result.setId(user.getId());
			result.setMailAddress(user.getMailAddress());
			result.setUserName(user.getUserName());
			result.setPassword(user.getPassword());
			
			return result;
			
		} catch (Exception e) {
//			result.setId(null);
//			result.setMailAddress(null);
//			result.setUserName(null);
//			result.setPassword(null);
			e.printStackTrace();
			return null;
		}		
		
	}

	@Override
	public void saveUser(UserData user) {
		UserAccount userAccount = new UserAccount();
		userAccount.setUserName(user.getUserName());
		userAccount.setPassword(user.getPassword());
		userAccount.setMailAddress(user.getMailAddress());
		useraccountimpl.save(userAccount);
	}

}
