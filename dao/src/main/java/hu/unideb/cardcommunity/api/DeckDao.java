package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.Deck;

public interface DeckDao {
	Deck save(Deck entity);
	List<Deck> save(List<Deck> entities);
	Deck findByName(String name, int userId);
	List<Deck> findAll(int gameTypeId,int userId);
}
