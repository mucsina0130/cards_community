package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;


/**
 * The persistent class for the CARD database table.
 * 
 */
@Entity
@Table(name="CARD")
public class Card extends CardBase implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(generator="seqCardGen")
	@SequenceGenerator(name="seqCardGen",sequenceName="card_seq", allocationSize=1)
	private long id;
	
	private String cost;

	private String description;

	private String name;

	//bi-directional many-to-many association to Deck
	@ManyToMany(mappedBy="cards")
	private List<Deck> decks;

	//bi-directional many-to-one association to RuleCard
	@OneToMany(mappedBy="card")
	private Collection<RuleCard> ruleCards;

	@ManyToOne
	@JoinColumn(name="GAME_TYPE_ID")
	private GameType gameType;
	
	public Card() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public String getCost() {
		return this.cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Deck> getDecks() {
		return this.decks;
	}

	public void setDecks(List<Deck> decks) {
		this.decks = decks;
	}

	public Collection<RuleCard> getRuleCards() {
		return this.ruleCards;
	}

	public void setRuleCards(Collection<RuleCard> ruleCards) {
		this.ruleCards = ruleCards;
	}

	public RuleCard addRuleCard(RuleCard ruleCard) {
		getRuleCards().add(ruleCard);
		ruleCard.setCard(this);

		return ruleCard;
	}

	public RuleCard removeRuleCard(RuleCard ruleCard) {
		getRuleCards().remove(ruleCard);
		ruleCard.setCard(null);

		return ruleCard;
	}
	
	public GameType getGameType() {
		return this.gameType;
	}

	public void setGameType(GameType gameType) {
		this.gameType = gameType;
	}

}