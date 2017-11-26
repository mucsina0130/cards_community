package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

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

	public UserAccount findById(long id)throws NoResultException {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<UserAccount> query = manager.createQuery("SELECT ua from UserAccount ua where ua.id=:uid", UserAccount.class);
		query.setParameter("uid", id);
		return query.getSingleResult();
	}

	public UserAccount findByName(String username)throws NoResultException {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<UserAccount> query = manager.createQuery("SELECT ua from UserAccount ua where ua.userName=:uname ", UserAccount.class);
		query.setParameter("uname", username);
		
		return query.getSingleResult();
		
	}

	public List<UserAccount> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<UserAccount> query = manager.createQuery("SELECT ua from UserAccount ua", UserAccount.class);
		return query.getResultList();
	}

	@Override
	public UserAccount findByMail(String mail)throws NoResultException {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<UserAccount> query = manager.createQuery("SELECT ua from UserAccount ua where ua.mailAddress=:mail ", UserAccount.class);
		query.setParameter("mail", mail);
		
		return query.getSingleResult();
		
	}
}
