package hu.unideb.cardcommunity.impl;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.CardDao;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.EFMManager;

public class CardImpl implements CardDao {

	public Card save(Card entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public Collection<Card> save(Collection<Card> entities) {
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

	public Collection<Card> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca", Card.class);
		return query.getResultList();
	}

	@Override
	public Collection<Card> findByGameId(long id) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca join ca.gameType gt where gt.id=:id", Card.class);
		query.setParameter("id", id);
		return query.getResultList();
	}

	@Override
	public Collection<Card> findByString(String keyword,long gameTypeId) throws NoResultException{
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca join ca.gameType gt where gt.id=:gameTypeId and (upper(ca.name) like :keyword or upper(ca.description) like :keyword)", Card.class);
		query.setParameter("gameTypeId", gameTypeId);
		query.setParameter("keyword", "%" + keyword.toUpperCase() + "%");
		return query.getResultList();
	}

}
