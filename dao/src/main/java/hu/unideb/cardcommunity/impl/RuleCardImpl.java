package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.RuleCardDao;
import hu.unideb.cardcommunity.model.EFMManager;
import hu.unideb.cardcommunity.model.RuleCard;

public class RuleCardImpl implements RuleCardDao {

	public RuleCard save(RuleCard entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<RuleCard> save(List<RuleCard> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	public RuleCard findById(int id) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<RuleCard> query = manager.createQuery("SELECT rc from RuleCard rc where rc.ID:=id", RuleCard.class);
		query.setParameter("id", id);
		return (RuleCard) query.getResultList();
	}

	public List<RuleCard> findAll() {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<RuleCard> query = manager.createQuery("SELECT rc from RuleCard rc", RuleCard.class);
		return query.getResultList();
	}

}
