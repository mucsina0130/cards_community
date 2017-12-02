package hu.unideb.cardcommunity.service.gamerules.interfaces;

import java.util.List;

import hu.unideb.cardcommunity.service.gamerules.model.CardRulesData;

public interface IcardRules {
	public List<CardRulesData> getCardRules(Long ruleDeckId);
}
