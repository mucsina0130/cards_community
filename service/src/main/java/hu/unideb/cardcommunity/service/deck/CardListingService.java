package hu.unideb.cardcommunity.service.deck;

import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.CardDao;
import hu.unideb.cardcommunity.impl.CardImpl;
import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.service.deck.api.ICardListingService;
import hu.unideb.cardcommunity.service.deck.model.CardData;

public class CardListingService implements ICardListingService {
	private CardDao cardimpl = new CardImpl();
	@Override
	public List<CardData> cardListByGame(Long id) {
		List<Card> card = cardimpl.findByGameId(id);
		List<CardData> result = new ArrayList<>();
		for (Card c : card) {
			CardData cd = new CardData();
			cd.setName(c.getName());
			cd.setBattleAttribute(c.getBattleAttribute1());
			cd.setBattleAttribute2(c.getBattleAttribute2());
			cd.setCost(c.getCost());
			cd.setDesc(c.getDescription());
			cd.setId(c.getId());
			result.add(cd);
		}
		return result;
	}

}
