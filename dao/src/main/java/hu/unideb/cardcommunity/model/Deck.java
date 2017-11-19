package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the DECK database table.
 * 
 */
@Entity
public class Deck implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private long id;

	@Column(name="IS_PUBLIC")
	private BigDecimal isPublic;

	private String name;

	//bi-directional many-to-one association to GameType
	@ManyToOne
	@JoinColumn(name="GAME_TYPE_ID")
	private GameType gameType;

	//bi-directional many-to-one association to UserAccount
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private UserAccount userAccount;

	@Column(name="IS_DELETED")
	private long isDeleted;
	
	//bi-directional many-to-many association to Card
	@ManyToMany
	@JoinTable(
		name="DECK_CARDLIST"
		, joinColumns={
			@JoinColumn(name="DECK_ID")
			}
		, inverseJoinColumns={
			@JoinColumn(name="CARD_ID")
			}
		)
	private List<Card> cards;

	public Deck() {
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

	public GameType getGameType() {
		return this.gameType;
	}

	public void setGameType(GameType gameType) {
		this.gameType = gameType;
	}

	public UserAccount getUserAccount() {
		return this.userAccount;
	}

	public void setUserAccount(UserAccount userAccount) {
		this.userAccount = userAccount;
	}

	public List<Card> getCards() {
		return this.cards;
	}

	public void setCards(List<Card> cards) {
		this.cards = cards;
	}

	public long getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(long isDeleted) {
		this.isDeleted = isDeleted;
	}

	
	
}