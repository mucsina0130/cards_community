package hu.unideb.cardcommunity.api;

import java.util.Collection;
import java.util.List;

import hu.unideb.cardcommunity.model.RuleCard;

public interface RuleCardDao {
	RuleCard save(RuleCard entity);
	Collection<RuleCard> save(Collection<RuleCard> entities);
	RuleCard findById(Long id);
	Collection<RuleCard> findByRuleDeckId(Long ruleDeckId);
}
