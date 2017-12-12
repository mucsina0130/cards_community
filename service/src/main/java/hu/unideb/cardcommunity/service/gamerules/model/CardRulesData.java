package hu.unideb.cardcommunity.service.gamerules.model;

import java.math.BigDecimal;

public class CardRulesData {
	public Long cardRuleId;
	public Long deckRuleId;
	public Long cardId;
	public BigDecimal maxAmount;
	
	public Long getCardRuleId() {
		return cardRuleId;
	}
	public void setCardRuleId(Long cardRuleId) {
		this.cardRuleId = cardRuleId;
	}
	public Long getDeckRuleId() {
		return deckRuleId;
	}
	public void setDeckRuleId(Long deckRuleId) {
		this.deckRuleId = deckRuleId;
	}
	public BigDecimal getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(BigDecimal maxAmount) {
		this.maxAmount = maxAmount;
	}
	public Long getCardId() {
		return cardId;
	}
	public void setCardId(Long cardId) {
		this.cardId = cardId;
	}
	
	
}
