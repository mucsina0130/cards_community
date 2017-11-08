package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.RuleDeck;

public interface RuleDeckDao {
	RuleDeck save(RuleDeck entity);
	List<RuleDeck> save(List<RuleDeck> entities);
	RuleDeck findById(long id);
	List<RuleDeck> findByDeckId(long id);
}
