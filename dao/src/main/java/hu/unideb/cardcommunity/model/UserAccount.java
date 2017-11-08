package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the USER_ACCOUNT database table.
 * 
 */
@Entity
@Table(name="USER_ACCOUNT")
public class UserAccount implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private long id;

	@Column(name="MAIL_ADDRESS")
	private String mailAddress;

	private String password;

	@Column(name="USER_NAME")
	private String userName;

	//bi-directional many-to-one association to Deck
	@OneToMany(mappedBy="userAccount")
	private List<Deck> decks;

	//bi-directional many-to-many association to GameType
	@ManyToMany
	@JoinTable(
		name="GAME_OWNER"
		, joinColumns={
			@JoinColumn(name="USER_ID")
			}
		, inverseJoinColumns={
			@JoinColumn(name="GAME_TYPE_ID")
			}
		)
	private List<GameType> gameTypes;

	public UserAccount() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getMailAddress() {
		return this.mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public List<Deck> getDecks() {
		return this.decks;
	}

	public void setDecks(List<Deck> decks) {
		this.decks = decks;
	}

	public Deck addDeck(Deck deck) {
		getDecks().add(deck);
		deck.setUserAccount(this);

		return deck;
	}

	public Deck removeDeck(Deck deck) {
		getDecks().remove(deck);
		deck.setUserAccount(null);

		return deck;
	}

	public List<GameType> getGameTypes() {
		return this.gameTypes;
	}

	public void setGameTypes(List<GameType> gameTypes) {
		this.gameTypes = gameTypes;
	}

}