package model;

import java.util.List;

public class DeckList {
	
	List<Deck> deckList;

	public DeckList(List<Deck> deckList) {
		super();
		this.deckList = deckList;
	}

	public DeckList() {
		super();
	}

	public List<Deck> getDeckList() {
		return deckList;
	}

	public void setDeckList(List<Deck> deckList) {
		this.deckList = deckList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((deckList == null) ? 0 : deckList.hashCode());
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
		DeckList other = (DeckList) obj;
		if (deckList == null) {
			if (other.deckList != null)
				return false;
		} else if (!deckList.equals(other.deckList))
			return false;
		return true;
	}
	
	
}
