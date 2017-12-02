package hu.unideb.cardcommunity.service.gamerules.api;

import java.util.ArrayList;
import java.util.List;

import hu.unideb.cardcommunity.api.RuleCardDao;
import hu.unideb.cardcommunity.impl.RuleCardImpl;
import hu.unideb.cardcommunity.model.RuleCard;
import hu.unideb.cardcommunity.service.gamerules.interfaces.IcardRules;
import hu.unideb.cardcommunity.service.gamerules.model.CardRulesData;

public class CardRulesService implements IcardRules {
	private RuleCardDao ruleCardimpl = new RuleCardImpl();
	@Override
	public List<CardRulesData> getCardRules(Long ruleDeckId) {
		List <CardRulesData> result = new ArrayList<>();
		try {
			List<RuleCard> ruleCard = ruleCardimpl.findByRuleDeckId(ruleDeckId);
			for(RuleCard r : ruleCard)
			{
				CardRulesData cs = new CardRulesData();
				cs.setCardRuleId(r.getId());
				cs.setDeckRuleId(r.getRuleDeck().getId());
				cs.setCardId(r.getCard().getId());
				cs.setMaxAmount(r.getMaxAmount());
				result.add(cs);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

}
