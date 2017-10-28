package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.Card;
import hu.unideb.cardcommunity.model.DeckCardlist;

public interface DeckCardListDao {
	DeckCardlist save(DeckCardlist entity);
	List<Card> findAll(int deckdId);
	List<DeckCardlist> showCardNumber(int deckdId); //I
}
