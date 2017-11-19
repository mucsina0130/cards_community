package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.DeckDao;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.model.EFMManager;

public class DeckImpl implements DeckDao {

	public Deck save(Deck entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<Deck> save(List<Deck> entities) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		for (Deck deck : entities) {
			manager.persist(deck);
		}
		manager.flush();
		manager.getTransaction().commit();
		return entities;
	}

	public List<Deck> findByName(String name, long userId) {
		EntityManager manager = EFMManager.getManager();
		long nonDeleted =0;
		TypedQuery<Deck> query = manager.createQuery("SELECT de from Deck de join de.userAccount u where u.id=:user and de.NAME:=name and de.isDeleted=:nondeleted", Deck.class);
		query.setParameter("user", userId);
		query.setParameter("name", name);
		query.setParameter("nondeleted", nonDeleted);
		return  query.getResultList();
	}
	
	public List<Deck> findByUserId(long userId) {
		EntityManager manager = EFMManager.getManager();
		long nonDeleted =0;
		TypedQuery<Deck> query = manager.createQuery("SELECT de from Deck de join de.userAccount u where u.id=:user and de.isDeleted=:nondeleted", Deck.class);
		query.setParameter("user", userId);
		query.setParameter("nondeleted", nonDeleted);
		return  query.getResultList();
	}

	public List<Deck> findAll(long gameTypeId, long userId) {
		EntityManager manager = EFMManager.getManager();
		long nonDeleted =0;
		TypedQuery<Deck> query = manager.createQuery("SELECT de from Deck de join de.userAccount u join de.gameType gt  where u.USER_ID:=id and gt.GAME_TYPE_ID:=gid and de.isDeleted=:nondeleted", Deck.class);
		query.setParameter("id", userId);
		query.setParameter("gid", gameTypeId);
		query.setParameter("nondeleted", nonDeleted);
		return  query.getResultList();
	}

}
