package hu.unideb.cardcommunity.service.deck.api;

import java.util.List;

import hu.unideb.cardcommunity.service.deck.model.CardData;

public interface ICardListingService {

	List<CardData> cardListByGame(Long id);
	List<CardData> cardListByKeyWord(String keyWord, Long gameTypeId);

}