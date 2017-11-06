package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.DeckDao;
import hu.unideb.cardcommunity.model.CardMapper;
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

	public List<Deck> findByName(String name, int userId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Deck> query = manager.createQuery("SELECT de from Deck de where de.USER_ID:=id and de.NAME:=name", Deck.class);
		query.setParameter("id", userId);
		query.setParameter("name", name);
		return  query.getResultList();
	}
	
	public List<Deck> findByUserId(int userId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Deck> query = manager.createQuery("SELECT de from Deck de where de.user_id=:id", Deck.class);
		query.setParameter("id", userId);
		return  query.getResultList();
	}

	public List<Deck> findAll(int gameTypeId, int userId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Deck> query = manager.createQuery("SELECT de from Deck de where de.USER_ID:=id and de.GAME_TYPE_ID:=gid", Deck.class);
		query.setParameter("id", userId);
		query.setParameter("gid", gameTypeId);
		return  query.getResultList();
	}

}
