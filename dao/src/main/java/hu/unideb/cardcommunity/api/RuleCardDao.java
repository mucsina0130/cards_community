package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.RuleCard;

public interface RuleCardDao {
	RuleCard save(RuleCard entity);
	List<RuleCard> save(List<RuleCard> entities);
	RuleCard findById(int id);
	List<RuleCard> findAll();
}
