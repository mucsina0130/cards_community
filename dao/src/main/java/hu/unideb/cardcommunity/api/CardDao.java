package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.Card;

public interface CardDao {
	Card save(Card entity);
	List<Card> save(List<Card> entities);
	Card findById(long id);
	List<Card> findByGameId(long id);
	Card findByName(String name);
	List<Card> findAll();
}