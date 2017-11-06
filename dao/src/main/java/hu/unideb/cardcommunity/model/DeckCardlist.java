package hu.unideb.cardcommunity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class DeckCardlist {
	@Id
	@Column(name="ROWID")
	String rowid;
	@ManyToOne
	@JoinColumn(name="ID")
	Deck deckId;
	@ManyToOne
	@JoinColumn(name="ID")
	Card cardId;
	int amount;
	
	public DeckCardlist() {
		super();
	}

	public DeckCardlist(Deck deckId, Card cardId, int amount) {
		super();
		this.deckId = deckId;
		this.cardId = cardId;
		this.amount = amount;
	}

	public Deck getDeckId() {
		return deckId;
	}

	public void setDeckId(Deck deckId) {
		this.deckId = deckId;
	}

	public Card getCardId() {
		return cardId;
	}

	public void setCardId(Card cardId) {
		this.cardId = cardId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + amount;
		result = prime * result + ((cardId == null) ? 0 : cardId.hashCode());
		result = prime * result + ((deckId == null) ? 0 : deckId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DeckCardlist other = (DeckCardlist) obj;
		if (amount != other.amount)
			return false;
		if (cardId == null) {
			if (other.cardId != null)
				return false;
		} else if (!cardId.equals(other.cardId))
			return false;
		if (deckId == null) {
			if (other.deckId != null)
				return false;
		} else if (!deckId.equals(other.deckId))
			return false;
		return true;
	}
	
	

}
