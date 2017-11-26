package hu.unideb.cardcommunity.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import hu.unideb.cardcommunity.api.DeckCardListDao;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.model.EFMManager;

public class DeckCardListImpl implements DeckCardListDao{

	@Override
	public List<Card> cardListByDeck(Long deckid) {
		EntityManager manager = EFMManager.getManager();
		TypedQuery<Card> query = manager.createQuery("SELECT ca from Card ca join ca.decks de  where de.id=:deckid", Card.class);
		query.setParameter("deckid", deckid);
		return  query.getResultList();
	}

}
