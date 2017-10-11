package model;

import java.util.List;

public class DeckCardListList {
	
	List<DeckCardlist> deckCardListList;

	public DeckCardListList(List<DeckCardlist> deckCardListList) {
		super();
		this.deckCardListList = deckCardListList;
	}

	public DeckCardListList() {
		super();
	}

	public List<DeckCardlist> getDeckCardListList() {
		return deckCardListList;
	}

	public void setDeckCardListList(List<DeckCardlist> deckCardListList) {
		this.deckCardListList = deckCardListList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((deckCardListList == null) ? 0 : deckCardListList.hashCode());
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
		DeckCardListList other = (DeckCardListList) obj;
		if (deckCardListList == null) {
			if (other.deckCardListList != null)
				return false;
		} else if (!deckCardListList.equals(other.deckCardListList))
			return false;
		return true;
	}
	
	
}
