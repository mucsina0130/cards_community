package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.RuleDeckDao;
import hu.unideb.cardcommunity.model.EFMManager;
import hu.unideb.cardcommunity.model.RuleCard;
import hu.unideb.cardcommunity.model.RuleDeck;
import hu.unideb.cardcommunity.model.UserAccount;

public class RuleDeckImpl implements RuleDeckDao{

	public RuleDeck save(RuleDeck entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<RuleDeck> save(List<RuleDeck> entities) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		for (RuleDeck rd : entities) {
			manager.persist(rd);
		}
		manager.flush();
		manager.getTransaction().commit();
		return entities;
	}

	public RuleDeck findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<RuleDeck> findByDeckId(long id) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<RuleDeck> query = manager.createQuery("SELECT rd from RuleDeck rd where rd.ID:=ruledeckid", RuleDeck.class);
		query.setParameter("ruledeckid", id);
		return query.getResultList();
	}



}
