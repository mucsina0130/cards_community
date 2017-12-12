package hu.unideb.cardcommunity.service.deck;

import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.DeckDao;
import hu.unideb.cardcommunity.api.GameTypeDao;
import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.impl.DeckImpl;
import hu.unideb.cardcommunity.impl.GameTypeImpl;
import hu.unideb.cardcommunity.impl.UserAccountImpl;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.model.GameType;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.deck.api.IDeckListingService;
import hu.unideb.cardcommunity.service.deck.model.DeckData;


public class DeckListingService implements IDeckListingService {
	private DeckDao deckimpl = new DeckImpl();
	private GameTypeDao gameimpl = new GameTypeImpl();
	private UserAccountDao userimpl = new UserAccountImpl();
	
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
	public List<DeckData> listAllPublicDeck() {
		List<DeckData> result = new ArrayList<>();
		try {
			List<Deck> deck = deckimpl.findAllPublicDeck();
			for (Deck d : deck) {
				DeckData ds = new DeckData();
				ds.setName(d.getName());
				ds.setGame(d.getGameType().getName());
				ds.setGameId(d.getGameType().getId());
				ds.setId(d.getId());
				ds.setIsPublic(d.getIsPublic());
				ds.setUsername(d.getUserAccount().getUserName());
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
	public void saveDeck(DeckData deck) {
		Deck newDeck = new Deck();
		GameType game = gameimpl.findById(deck.getGameId()).get(0);
		UserAccount user = userimpl.findById(deck.getUserId());
		List<Card> cards = new ArrayList<>();
		for(int i =0;i<deck.getCardId().size();i++)
		{
			Card card = new Card();
			card.setId(deck.getCardId().get(i).getId());
			cards.add(card);			
		}
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
		GameType game = gameimpl.findById(deck.getGameId()).get(0);
		UserAccount user = userimpl.findById(deck.getUserId());
		List<Card> cards = new ArrayList<>();
		for(int i =0;i<deck.getCardId().size();i++)
		{
			Card card = new Card();
			card.setId(deck.getCardId().get(i).getId());
			cards.add(card);			
		}
		updatedDeck.setName(deck.getName());
		updatedDeck.setGameType(game);
		updatedDeck.setIsDeleted(0);
		updatedDeck.setIsPublic(deck.getIsPublic());
		updatedDeck.setUserAccount(user);
		updatedDeck.setCards(cards);
		deckimpl.updateDeck(updatedDeck);;
	}

	@Override
	public void deleteDeck(DeckData deck) {
		Deck deleteDeck = deckimpl.findById(deck.getId());
		deckimpl.deleteDeck(deleteDeck);
	}
	
}
