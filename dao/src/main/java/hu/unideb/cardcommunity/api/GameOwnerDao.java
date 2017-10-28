package hu.unideb.cardcommunity.api;

import hu.unideb.cardcommunity.model.GameOwner;
import hu.unideb.cardcommunity.model.UserAccount;

public interface GameOwnerDao {
	GameOwner save(GameOwner entity);
	UserAccount finById(int id);
}
