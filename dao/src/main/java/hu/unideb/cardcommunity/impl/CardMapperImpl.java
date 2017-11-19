package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.CardMapperDao;
import hu.unideb.cardcommunity.model.CardMapper;
import hu.unideb.cardcommunity.model.EFMManager;

public class CardMapperImpl implements CardMapperDao {

	public CardMapper save(CardMapper entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<CardMapper> save(List<CardMapper> entities) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		for (CardMapper cm : entities) {
			manager.persist(cm);
		}
		manager.flush();
		manager.getTransaction().commit();
		return entities;
	}

	public CardMapper findByGameTypeId(long id) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<CardMapper> query = manager.createQuery("SELECT cm from CardMapper cm join cm.gameType gt where gt.gameType=:id", CardMapper.class);
		query.setParameter("id", id);
		return (CardMapper) query.getResultList();
	}

	public List<CardMapper> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<CardMapper> query = manager.createQuery("SELECT cm from CardMapper cm", CardMapper.class);
		return query.getResultList();
	}

	@Override
	public CardMapper findById(long id) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<CardMapper> query = manager.createQuery("SELECT cm from CardMapper cm where cm.id=:id", CardMapper.class);
		query.setParameter("id", id);
		return (CardMapper) query.getResultList();
	}

}
