package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.Card;



public interface DeckCardList {
	
	List<Card> cardListByDeck(Long deckid,long userid);
}
