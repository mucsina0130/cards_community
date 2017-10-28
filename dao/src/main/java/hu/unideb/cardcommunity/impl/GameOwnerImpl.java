package hu.unideb.cardcommunity.impl;

import javax.persistence.EntityManager;

import hu.unideb.cardcommunity.api.GameOwnerDao;
import hu.unideb.cardcommunity.model.EFMManager;
import hu.unideb.cardcommunity.model.GameOwner;
import hu.unideb.cardcommunity.model.UserAccount;

public class GameOwnerImpl implements GameOwnerDao {

	public GameOwner save(GameOwner entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public UserAccount finById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
