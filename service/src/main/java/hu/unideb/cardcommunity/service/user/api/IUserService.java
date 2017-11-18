package hu.unideb.cardcommunity.service.user.api;

import hu.unideb.cardcommunity.service.user.model.UserData;

public interface IUserService {
	UserData findByUserName(String name);
}
