package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.UserAccount;

public interface UserAccountDao {
	UserAccount save(UserAccount entity);
	List<UserAccount> save(List<UserAccount> entities);
	UserAccount findById(long id);
	UserAccount findByName(String username);
	UserAccount findByMail(String mail);
	List<UserAccount> findAll();
}
