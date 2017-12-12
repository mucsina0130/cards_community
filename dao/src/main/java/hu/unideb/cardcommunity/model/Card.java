package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the CARD database table.
 * 
 */
@Entity
public class Card implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator="seqCardGen")
	@SequenceGenerator(name="seqCardGen",sequenceName="card_seq", allocationSize=1)
	private long id;

	@Column(name="BATTLE_ATTRIBUTE_1")
	private String battleAttribute1;

	@Column(name="BATTLE_ATTRIBUTE_2")
	private String battleAttribute2;

	private String cost;

	private String description;

	@Column(name="FIELD1")
	private String field1;

	@Column(name="FIELD2")
	private String field2;

	@Column(name="FIELD3")
	private String field3;

	@Column(name="FIELD4")
	private String field4;

	@Column(name="FIELD5")
	private String field5;

	private String name;

	//bi-directional many-to-one association to GameType
	@ManyToOne
	@JoinColumn(name="GAME_TYPE_ID")
	private GameType gameType;

	//bi-directional many-to-many association to Deck
	@ManyToMany(mappedBy="cards")
	private List<Deck> decks;

	//bi-directional many-to-one association to RuleCard
	@OneToMany(mappedBy="card")
	private List<RuleCard> ruleCards;

	public Card() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getBattleAttribute1() {
		return this.battleAttribute1;
	}

	public void setBattleAttribute1(String battleAttribute1) {
		this.battleAttribute1 = battleAttribute1;
	}

	public String getBattleAttribute2() {
		return this.battleAttribute2;
	}

	public void setBattleAttribute2(String battleAttribute2) {
		this.battleAttribute2 = battleAttribute2;
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


	public String getField1() {
		return this.field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	public String getField2() {
		return this.field2;
	}

	public void setField2(String field2) {
		this.field2 = field2;
	}

	public String getField3() {
		return this.field3;
	}

	public void setField3(String field3) {
		this.field3 = field3;
	}

	public String getField4() {
		return this.field4;
	}

	public void setField4(String field4) {
		this.field4 = field4;
	}

	public String getField5() {
		return this.field5;
	}

	public void setField5(String field5) {
		this.field5 = field5;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public GameType getGameType() {
		return this.gameType;
	}

	public void setGameType(GameType gameType) {
		this.gameType = gameType;
	}

	public List<Deck> getDecks() {
		return this.decks;
	}

	public void setDecks(List<Deck> decks) {
		this.decks = decks;
	}

	public List<RuleCard> getRuleCards() {
		return this.ruleCards;
	}

	public void setRuleCards(List<RuleCard> ruleCards) {
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

}