package hu.unideb.cardcommunity.service.gamerules.api;

import hu.unideb.cardcommunity.api.RuleDeckDao;
import hu.unideb.cardcommunity.impl.RuleDeckImpl;
import hu.unideb.cardcommunity.model.RuleCard;
import hu.unideb.cardcommunity.model.RuleDeck;
import hu.unideb.cardcommunity.service.gamerules.interfaces.IdeckRules;
import hu.unideb.cardcommunity.service.gamerules.model.DeckRulesData;

public class DeckRulesService implements IdeckRules{
	private RuleDeckDao ruleDeck = new RuleDeckImpl();
	@Override
	public DeckRulesData getDeckRulesData(Long gameType) {
		DeckRulesData result = new DeckRulesData();
		RuleDeck ruledeck = ruleDeck.findByGameTypeId(gameType);
		result.setDeckRuleId(ruledeck.getId());
		result.setGameId(ruledeck.getGameTypes().get(0).getId());
		result.setMaxQuantity(ruledeck.getMaxQuantity());
		result.setMinQuantity(ruledeck.getMinQuantity());
		result.setStandardCardQuantity(ruledeck.getStandardCardQuantity());
		
		return result;
	}

}
