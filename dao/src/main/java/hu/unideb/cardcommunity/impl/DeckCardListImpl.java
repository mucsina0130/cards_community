package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.DeckCardListDao;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.DeckCardlist;
import hu.unideb.cardcommunity.model.EFMManager;

public class DeckCardListImpl implements DeckCardListDao {

	public DeckCardlist save(DeckCardlist entity) {
		EntityManager manager = EFMManager.getManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.flush();
		manager.getTransaction().commit();
		return entity;
	}

	public List<Card> findAll(int deckdId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca, DeckCardlist dl where dl.CARD_ID =:ca.ID and dl.DECK_ID:=id", Card.class);
		query.setParameter("id", deckdId);
		return  query.getResultList();
	}

	public List<DeckCardlist> showCardNumber(int deckdId) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<DeckCardlist> query = manager.createQuery("SELECT dl from Card ca, DeckCardlist dl where dl.CARD_ID =:ca.ID and dl.DECK_ID:=id", DeckCardlist.class);
		query.setParameter("id", deckdId);
		return  query.getResultList();
	}

}
