package hu.unideb.cardcommunity.model;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Entity
public class DeckCardlist {
	@Id
	int deckId;
	@Id
	int cardId;
	int	amount;
	
	public DeckCardlist() {
		super();
	}

	public DeckCardlist(int deckId, int cardId, int amount) {
		super();
		this.deckId = deckId;
		this.cardId = cardId;
		this.amount = amount;
	}

	public int getDeckId() {
		return deckId;
	}

	public void setDeckId(int deckId) {
		this.deckId = deckId;
	}

	public int getCardId() {
		return cardId;
	}

	public void setCardId(int cardId) {
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
		result = prime * result + cardId;
		result = prime * result + deckId;
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
		if (cardId != other.cardId)
			return false;
		if (deckId != other.deckId)
			return false;
		return true;
	}
	
	

}
