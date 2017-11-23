package hu.unideb.cardcommunity.service.deck.api;

import java.util.List;

import hu.unideb.cardcommunity.service.deck.model.CardData;

public interface DeckCardListingService {
	List<CardData> cardListByDeck(Long deckid,long userid);
}
