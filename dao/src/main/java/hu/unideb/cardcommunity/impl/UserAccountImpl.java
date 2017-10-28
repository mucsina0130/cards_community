package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;

import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.model.EFMManager;
import hu.unideb.cardcommunity.model.UserAccount;
import javax.persistence.TypedQuery;

public class UserAccountImpl implements UserAccountDao {

	public UserAccount save(UserAccount entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<UserAccount> save(List<UserAccount> entities) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		for (UserAccount ua : entities) {
			manager.persist(ua);
		}
		manager.flush();
		manager.getTransaction().commit();
		return entities;
	}

	public UserAccount findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<UserAccount> findByName(String username) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<UserAccount> query = manager.createQuery("SELECT ua from USER_ACCOUNT ua where ua.USER_NAME:=uname", UserAccount.class);
		query.setParameter("uname", username);
		return query.getResultList();

	}

	public List<UserAccount> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<UserAccount> query = manager.createQuery("SELECT ua from USER_ACCOUNT ua", UserAccount.class);
		return query.getResultList();
	}

}
