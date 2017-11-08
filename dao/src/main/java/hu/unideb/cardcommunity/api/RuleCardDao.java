package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.RuleCard;

public interface RuleCardDao {
	RuleCard save(RuleCard entity);
	List<RuleCard> save(List<RuleCard> entities);
	RuleCard findById(long id);
	List<RuleCard> findAll();
}
