		package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.GameTypeDao;
import hu.unideb.cardcommunity.model.EFMManager;
import hu.unideb.cardcommunity.model.GameType;
import hu.unideb.cardcommunity.model.UserAccount;

public class GameTypeImpl implements GameTypeDao{

	public GameType save(GameType entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<GameType> save(List<GameType> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	public GameType findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<GameType> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<GameType> query = manager.createQuery("SELECT gt from GameType gt", GameType.class);
		return query.getResultList();
	}

	@Override
	public List<GameType> findById(long gameTypeId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<GameType> query = manager.createQuery("SELECT gt from GameType gt where gt.id:=gameTypeId", GameType.class);
		query.setParameter("id", gameTypeId);
		return query.getResultList();
	}

}
