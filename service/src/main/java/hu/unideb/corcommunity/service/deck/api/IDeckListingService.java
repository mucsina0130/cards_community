package hu.unideb.corcommunity.service.deck.api;

import java.util.List;

import hu.unideb.cardcommunity.service.deck.model.DeckData;

public interface IDeckListingService {

	List<DeckData> listByUserId(long userId);

}