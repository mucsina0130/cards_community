package hu.unideb.cardcommunity.service.deck.api;

import java.util.List;

import hu.unideb.cardcommunity.service.deck.model.DeckData;

public interface IDeckListingService {

	List<DeckData> listByUserId(long userId);
	List<DeckData> listByUserAndGame(long userId, long gameTypeId);
	List<DeckData> listAllPublicDeck();
	void saveDeck(DeckData deck);
	void updateDeck(DeckData deck);
	void deleteDeck(DeckData deck);
}
