package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;


/**
 * The persistent class for the RULE_DECK database table.
 * 
 */
@Entity
@Table(name="RULE_DECK")
public class RuleDeck implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator="seqRuleDeckGen")
	@SequenceGenerator(name="seqRuleDeckGen",sequenceName="ruleDeck_seq", allocationSize=1)
	private long id;

	@Column(name="MAX_QUANTITY")
	private BigDecimal maxQuantity;

	@Column(name="MIN_QUANTITY")
	private BigDecimal minQuantity;

	@Column(name="STANDARD_CARD_QUANTITY")
	private BigDecimal standardCardQuantity;

	//bi-directional many-to-one association to GameType
	@OneToMany(mappedBy="ruleDeck")
	private List<GameType> gameTypes;

	//bi-directional many-to-one association to RuleCard
	@OneToMany(mappedBy="ruleDeck")
	private Collection<RuleCard> ruleCards;

	public RuleDeck() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getMaxQuantity() {
		return this.maxQuantity;
	}

	public void setMaxQuantity(BigDecimal maxQuantity) {
		this.maxQuantity = maxQuantity;
	}

	public BigDecimal getMinQuantity() {
		return this.minQuantity;
	}

	public void setMinQuantity(BigDecimal minQuantity) {
		this.minQuantity = minQuantity;
	}

	public BigDecimal getStandardCardQuantity() {
		return this.standardCardQuantity;
	}

	public void setStandardCardQuantity(BigDecimal standardCardQuantity) {
		this.standardCardQuantity = standardCardQuantity;
	}

	public List<GameType> getGameTypes() {
		return this.gameTypes;
	}

	public void setGameTypes(List<GameType> gameTypes) {
		this.gameTypes = gameTypes;
	}

	public GameType addGameType(GameType gameType) {
		getGameTypes().add(gameType);
		gameType.setRuleDeck(this);

		return gameType;
	}

	public GameType removeGameType(GameType gameType) {
		getGameTypes().remove(gameType);
		gameType.setRuleDeck(null);

		return gameType;
	}

	public Collection<RuleCard> getRuleCards() {
		return this.ruleCards;
	}

	public void setRuleCards(Collection<RuleCard> ruleCards) {
		this.ruleCards = ruleCards;
	}

	public RuleCard addRuleCard(RuleCard ruleCard) {
		getRuleCards().add(ruleCard);
		ruleCard.setRuleDeck(this);

		return ruleCard;
	}

	public RuleCard removeRuleCard(RuleCard ruleCard) {
		getRuleCards().remove(ruleCard);
		ruleCard.setRuleDeck(null);

		return ruleCard;
	}

}