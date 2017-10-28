package api;

import java.util.List;

import hu.unideb.cardcommunity.model.UserAccount;

public interface UserAccountDao {
	UserAccount save(UserAccount entity);
	List<UserAccount> save(List<UserAccount> entities);
	UserAccount findById(int id);
	List<UserAccount> findAll();
}
