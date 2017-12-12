package hu.unideb.cardcommunity.service.gamerules.interfaces;

import hu.unideb.cardcommunity.service.gamerules.model.DeckRulesData;

public interface IdeckRules {
	public DeckRulesData getDeckRulesData(Long gameType);
}
