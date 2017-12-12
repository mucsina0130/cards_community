package hu.unideb.cardcommunity.service.gamerules.model;

import java.math.BigDecimal;

public class DeckRulesData {
	public Long deckRuleId;
	public Long gameId;
	public BigDecimal minQuantity;
	public BigDecimal maxQuantity;
	public BigDecimal standardCardQuantity;
	
	public Long getDeckRuleId() {
		return deckRuleId;
	}
	public void setDeckRuleId(Long deckRuleId) {
		this.deckRuleId = deckRuleId;
	}
	public Long getGameId() {
		return gameId;
	}
	public void setGameId(Long gameId) {
		this.gameId = gameId;
	}
	public BigDecimal getMinQuantity() {
		return minQuantity;
	}
	public void setMinQuantity(BigDecimal minQuantity) {
		this.minQuantity = minQuantity;
	}
	public BigDecimal getMaxQuantity() {
		return maxQuantity;
	}
	public void setMaxQuantity(BigDecimal maxQuantity) {
		this.maxQuantity = maxQuantity;
	}
	public BigDecimal getStandardCardQuantity() {
		return standardCardQuantity;
	}
	public void setStandardCardQuantity(BigDecimal standardCardQuantity) {
		this.standardCardQuantity = standardCardQuantity;
	}
	
}
