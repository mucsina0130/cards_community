package hu.unideb.corcommunity.service.deck;

import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.DeckDao;
import hu.unideb.cardcommunity.impl.DeckImpl;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.service.deck.model.DeckData;
import hu.unideb.corcommunity.service.deck.api.IDeckListingService;


public class DeckListingService implements IDeckListingService {
	private DeckDao deckimpl = new DeckImpl();
	
	@Override
	public List<DeckData> listByUserId(long userId) {
		List<Deck> deck = deckimpl.findByUserId(userId);
		List<DeckData> result = new ArrayList<>();
		for (Deck d : deck) {
			DeckData ds = new DeckData();
			ds.setName(d.getName());
			ds.setGame(d.getGameType().getName());
			result.add(ds);
		}
		return result;
	}
	
}
