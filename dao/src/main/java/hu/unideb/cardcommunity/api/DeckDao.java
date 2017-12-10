package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.Deck;

public interface DeckDao {
	void save(Deck entity);
	void updateDeck(Deck entity);
	List<Deck> save(List<Deck> entities);
	List<Deck> findByName(String name, long userId);
	List<Deck> findAll(long gameTypeId,long userId);
	List<Deck> findByUserId(long userId);
	List<Deck> findAllPublicDeck();
}
