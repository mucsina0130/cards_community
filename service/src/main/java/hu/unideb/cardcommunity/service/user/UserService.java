package hu.unideb.cardcommunity.service.user;

import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.GameTypeDao;
import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.impl.GameTypeImpl;
import hu.unideb.cardcommunity.impl.UserAccountImpl;
import hu.unideb.cardcommunity.model.GameType;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.game.model.GameData;
import hu.unideb.cardcommunity.service.user.api.IUserService;
import hu.unideb.cardcommunity.service.user.model.UserData;

public class UserService implements IUserService {
	private UserAccountDao useraccountimpl = new UserAccountImpl();
	@Override
	public UserData findByUserName(String name) {

		List<UserAccount> user = useraccountimpl.findByName(name);
		List<UserData> result = new ArrayList<>();
		for (UserAccount u : user) {
			UserData ud = new UserData();
			ud.setId(u.getId());
			ud.setPassword(u.getPassword());
			ud.setUserName(u.getUserName());
			result.add(ud);
		}
		return (UserData) result;
	}

}
