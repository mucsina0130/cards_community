package hu.unideb.cardcommunity.impl;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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

	public Collection<RuleCard> save(Collection<RuleCard> entities) {
		// TODO Auto-generated method stub
		return null;
	}

	public RuleCard findById(Long ruleCardId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<RuleCard> query = manager.createQuery("SELECT rc from RuleCard rc where rc.id=:id", RuleCard.class);
		query.setParameter("id", ruleCardId);
		return (RuleCard) query.getResultList();
	}

	public Collection<RuleCard> findByRuleDeckId(Long ruleDeckId)throws NoResultException {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<RuleCard> query = manager.createQuery("SELECT rc from RuleCard rc join rc.ruleDeck rd where rd.id=:ruleDeckId", RuleCard.class);
		query.setParameter("ruleDeckId", ruleDeckId);
		return query.getResultList();
	}

}
