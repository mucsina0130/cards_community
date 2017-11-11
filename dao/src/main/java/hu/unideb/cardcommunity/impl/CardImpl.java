package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.CardDao;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.EFMManager;
import hu.unideb.cardcommunity.model.RuleDeck;
import hu.unideb.cardcommunity.model.UserAccount;

public class CardImpl implements CardDao {

	public Card save(Card entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<Card> save(List<Card> entities) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		for (Card card : entities) {
			manager.persist(card);
		}
		manager.flush();
		manager.getTransaction().commit();
		return entities;
	}

	public Card findById(long id) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca where ca.ID=:id", Card.class);
		query.setParameter("id", id);
		return (Card) query.getResultList();
	}

	public Card findByName(String name) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca where ca.NAME=:cardName", Card.class);
		query.setParameter("cardName", name);
		return (Card) query.getResultList();

	}

	public List<Card> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca", Card.class);
		return query.getResultList();
	}

}
