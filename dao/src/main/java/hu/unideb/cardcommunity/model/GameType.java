package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;


/**
 * The persistent class for the GAME_TYPE database table.
 * 
 */
@Entity
@Table(name="GAME_TYPE")
public class GameType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator="seqGameTypeGen")
	@SequenceGenerator(name="seqGameTypeGen",sequenceName="gameType_seq", allocationSize=1)
	private long id;

	@Column(name="IS_PUBLIC")
	private BigDecimal isPublic;

	private String name;

	@Column(name="RULE_OF_THE_GAME")
	private String ruleOfTheGame;

	@Column(name="SHOR_DESCRIPTION")
	private String shorDescription;

	//bi-directional many-to-one association to Card
	@OneToMany(mappedBy="gameType")
	private Collection<Card> cards;

	//bi-directional many-to-one association to CardMapper
	@OneToMany(mappedBy="gameType")
	private List<CardMapper> cardMappers;

	//bi-directional many-to-one association to Deck
	@OneToMany(mappedBy="gameType")
	private List<Deck> decks;

	//bi-directional many-to-many association to UserAccount
	@ManyToMany(mappedBy="gameTypes")
	private List<UserAccount> userAccounts;

	//bi-directional many-to-one association to RuleDeck
	@ManyToOne
	@JoinColumn(name="RULE_DECK_ID")
	private RuleDeck ruleDeck;

	public GameType() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BigDecimal getIsPublic() {
		return this.isPublic;
	}

	public void setIsPublic(BigDecimal isPublic) {
		this.isPublic = isPublic;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRuleOfTheGame() {
		return this.ruleOfTheGame;
	}

	public void setRuleOfTheGame(String ruleOfTheGame) {
		this.ruleOfTheGame = ruleOfTheGame;
	}

	public String getShorDescription() {
		return this.shorDescription;
	}

	public void setShorDescription(String shorDescription) {
		this.shorDescription = shorDescription;
	}

	public Collection<Card> getCards() {
		return this.cards;
	}

	public void setCards(Collection<Card> cards) {
		this.cards = cards;
	}

	public Card addCard(Card card) {
		getCards().add(card);
		card.setGameType(this);

		return card;
	}

	public Card removeCard(Card card) {
		getCards().remove(card);
		card.setGameType(null);

		return card;
	}

	public List<CardMapper> getCardMappers() {
		return this.cardMappers;
	}

	public void setCardMappers(List<CardMapper> cardMappers) {
		this.cardMappers = cardMappers;
	}

	public CardMapper addCardMapper(CardMapper cardMapper) {
		getCardMappers().add(cardMapper);
		cardMapper.setGameType(this);

		return cardMapper;
	}

	public CardMapper removeCardMapper(CardMapper cardMapper) {
		getCardMappers().remove(cardMapper);
		cardMapper.setGameType(null);

		return cardMapper;
	}

	public List<Deck> getDecks() {
		return this.decks;
	}

	public void setDecks(List<Deck> decks) {
		this.decks = decks;
	}

	public Deck addDeck(Deck deck) {
		getDecks().add(deck);
		deck.setGameType(this);

		return deck;
	}

	public Deck removeDeck(Deck deck) {
		getDecks().remove(deck);
		deck.setGameType(null);

		return deck;
	}

	public List<UserAccount> getUserAccounts() {
		return this.userAccounts;
	}

	public void setUserAccounts(List<UserAccount> userAccounts) {
		this.userAccounts = userAccounts;
	}

	public RuleDeck getRuleDeck() {
		return this.ruleDeck;
	}

	public void setRuleDeck(RuleDeck ruleDeck) {
		this.ruleDeck = ruleDeck;
	}

}