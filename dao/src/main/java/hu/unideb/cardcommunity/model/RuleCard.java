package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the RULE_CARD database table.
 * 
 */
@Entity
@Table(name="RULE_CARD")
public class RuleCard implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private long id;

	@Column(name="MAX_AMOUNT")
	private BigDecimal maxAmount;

	//bi-directional many-to-one association to Card
	@ManyToOne
	@JoinColumn(name="ID_CARD")
	private Card card;

	//bi-directional many-to-one association to RuleDeck
	@ManyToOne
	@JoinColumn(name="RULE_DECK_ID")
	private RuleDeck ruleDeck;

	public RuleCard() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getMaxAmount() {
		return this.maxAmount;
	}

	public void setMaxAmount(BigDecimal maxAmount) {
		this.maxAmount = maxAmount;
	}

	public Card getCard() {
		return this.card;
	}

	public void setCard(Card card) {
		this.card = card;
	}

	public RuleDeck getRuleDeck() {
		return this.ruleDeck;
	}

	public void setRuleDeck(RuleDeck ruleDeck) {
		this.ruleDeck = ruleDeck;
	}

}