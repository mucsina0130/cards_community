package hu.unideb.cardcommunity.service.deck;

import java.security.PublicKey;
import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.CardDao;
import hu.unideb.cardcommunity.api.DeckCardListDao;
import hu.unideb.cardcommunity.api.DeckDao;
import hu.unideb.cardcommunity.impl.CardImpl;
import hu.unideb.cardcommunity.impl.DeckCardListImpl;
import hu.unideb.cardcommunity.impl.DeckImpl;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.service.deck.api.IDeckCardListingService;
import hu.unideb.cardcommunity.service.deck.model.CardData;
import hu.unideb.cardcommunity.service.deck.model.DeckCardList;
import hu.unideb.cardcommunity.service.game.model.GameData;
import hu.unideb.cardcommunity.service.user.model.UserData;

public class DeckCardListingService implements IDeckCardListingService{
	private DeckCardListDao cardimpl = new DeckCardListImpl();
	private DeckDao deckimpl = new DeckImpl();
	@Override
	public List<CardData> cardListByDeck(Long deckid) {
		List<Card> card = cardimpl.cardListByDeck(deckid);
		List<CardData> result = new ArrayList<>();
		for (Card c : card) {
			CardData cd = new CardData();
			cd.setName(c.getName());
			cd.setBattleAttribute(c.getBattleAttribute1());
			cd.setBattleAttribute2(c.getBattleAttribute2());
			cd.setCost(c.getCost());
			cd.setDesc(c.getDescription());
			cd.setId(c.getId());
			cd.setField1(c.getField1());
			cd.setField2(c.getField2());
			cd.setField3(c.getField3());
			cd.setField4(c.getField4());
			cd.setField5(c.getField5());
			result.add(cd);
		}
		return result;
	}
	@Override
	public List<DeckCardList> isPublicDeckListing() {
		List<DeckCardList> result = new ArrayList<>();
		try {
			List<Deck> isPublic = deckimpl.findAllPublicDeck();
			for (Deck d : isPublic) {
				DeckCardList publicDeck = new DeckCardList();
				UserData user = new UserData();
				GameData game = new GameData();
				List<CardData> card = new ArrayList<>();
				user.setId(d.getUserAccount().getId());
				user.setUserName(d.getUserAccount().getUserName());
				game.setId(d.getGameType().getId());
				game.setName(d.getGameType().getName());
				publicDeck.setUser(user);
				publicDeck.setGame(game);
				publicDeck.setName(d.getName());
				for (Card c : d.getCards()) {
					CardData cd = new CardData();
					cd.setName(c.getName());
					cd.setBattleAttribute(c.getBattleAttribute1());
					cd.setBattleAttribute2(c.getBattleAttribute2());
					cd.setCost(c.getCost());
					cd.setDesc(c.getDescription());
					cd.setId(c.getId());
					cd.setField1(c.getField1());
					cd.setField2(c.getField2());
					cd.setField3(c.getField3());
					cd.setField4(c.getField4());
					cd.setField5(c.getField5());
					card.add(cd);
				}
				publicDeck.setCards(card);
				result.add(publicDeck);
			}
			return result;
		} catch (Exception e) {
			DeckCardList publicDeck = new DeckCardList();
			UserData user = new UserData();
			GameData game = new GameData();
			user.setId(null);
			user.setMailAddress(null);
			user.setPassword(null);
			user.setUserName(null);
			game.setId(null);
			publicDeck.setGame(game);
			publicDeck.setUser(user);
			publicDeck.setCards(null);
			result.add(publicDeck);
			return result;
		}
	}

}
