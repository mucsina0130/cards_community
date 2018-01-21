package hu.unideb.cardcommunity.api;

import java.util.Collection;
import java.util.List;

import hu.unideb.cardcommunity.model.Card;



public interface DeckCardListDao {
	
	Collection<Card> cardListByDeck(Long deckid);
}
