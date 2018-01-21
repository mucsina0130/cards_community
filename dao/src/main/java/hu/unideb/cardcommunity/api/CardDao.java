package hu.unideb.cardcommunity.api;

import java.util.Collection;
import java.util.List;

import hu.unideb.cardcommunity.model.Card;

public interface CardDao {
	Card save(Card entity);
	Collection<Card> save(Collection<Card> entities);
	Card findById(long id);
	Collection<Card> findByGameId(long id);
	Card findByName(String name);
	Collection<Card> findAll();
	Collection<Card> findByString(String keyword,long gameTypeId);
}