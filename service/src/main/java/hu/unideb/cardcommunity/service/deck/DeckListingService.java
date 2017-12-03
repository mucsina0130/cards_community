package hu.unideb.cardcommunity.service.deck;

import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.DeckDao;
import hu.unideb.cardcommunity.impl.DeckImpl;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.model.GameType;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.deck.api.IDeckListingService;
import hu.unideb.cardcommunity.service.deck.model.DeckData;


public class DeckListingService implements IDeckListingService {
	private DeckDao deckimpl = new DeckImpl();
	
	@Override
	public List<DeckData> listByUserId(long userId) {
		List<DeckData> result = new ArrayList<>();
		try {
			List<Deck> deck = deckimpl.findByUserId(userId);
			for (Deck d : deck) {
				DeckData ds = new DeckData();
				ds.setName(d.getName());
				ds.setGame(d.getGameType().getName());
				ds.setGameId(d.getGameType().getId());
				ds.setId(d.getId());
				ds.setIsPublic(d.getIsPublic());
				result.add(ds);
				
			}
		} catch (Exception e) {
			DeckData ds = new DeckData();
			ds.setName(null);
			ds.setGame(null);
			ds.setGameId(null);
			ds.setId(null);
			ds.setIsPublic(null);
			result.add(null);
			
			
		}

		return result;
	}

	@Override
	public List<DeckData> listByUserAndGame(long userId, long gameTypeId) {
		List<Deck> deck = deckimpl.findAll(gameTypeId, userId);
		List<DeckData> result = new ArrayList<>();
		for (Deck d : deck) {
			DeckData ds = new DeckData();
			ds.setName(d.getName());
			ds.setGame(d.getGameType().getName());
			ds.setIsPublic(d.getIsPublic());
			result.add(ds);
		}
		return result;
	}

	@Override
	public void saveDeck(DeckData deck) {
		Deck newDeck = new Deck();
		GameType game = new GameType();
		UserAccount user = new UserAccount();
		List<Card> cards = new ArrayList<>();
		for(int i =0;i<deck.getCardId().size();i++)
		{
			Card card = new Card();
			card.setId(deck.getCardId().get(i).getId());
			cards.add(card);			
		}
		user.setId(deck.getUserId());
		game.setId(deck.getId());
		newDeck.setName(deck.getName());
		newDeck.setGameType(game);
		newDeck.setIsDeleted(0);
		newDeck.setIsPublic(deck.getIsPublic());
		newDeck.setUserAccount(user);
		newDeck.setCards(cards);
		deckimpl.save(newDeck);
		
	}

	@Override
	public void updateDeck(DeckData deck) {
		Deck updatedDeck = new Deck();
		GameType game = new GameType();
		UserAccount user = new UserAccount();
		List<Card> cards = new ArrayList<>();
		for(int i =0;i<deck.getCardId().size();i++)
		{
			Card card = new Card();
			card.setId(deck.getCardId().get(i).getId());
			cards.add(card);			
		}
		user.setId(deck.getUserId());
		game.setId(deck.getId());
		updatedDeck.setName(deck.getName());
		updatedDeck.setGameType(game);
		updatedDeck.setIsDeleted(0);
		updatedDeck.setIsPublic(deck.getIsPublic());
		updatedDeck.setUserAccount(user);
		updatedDeck.setCards(cards);
		deckimpl.updateDeck(updatedDeck);;
	}
	
}
