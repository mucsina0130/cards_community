package model;

import java.util.List;

public class GameOwnerList {

	List<GameOwner> gameOwnerList;

	public GameOwnerList(List<GameOwner> gameOwnerList) {
		super();
		this.gameOwnerList = gameOwnerList;
	}

	public GameOwnerList() {
		super();
	}

	public List<GameOwner> getGameOwnerList() {
		return gameOwnerList;
	}

	public void setGameOwnerList(List<GameOwner> gameOwnerList) {
		this.gameOwnerList = gameOwnerList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((gameOwnerList == null) ? 0 : gameOwnerList.hashCode());
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
		GameOwnerList other = (GameOwnerList) obj;
		if (gameOwnerList == null) {
			if (other.gameOwnerList != null)
				return false;
		} else if (!gameOwnerList.equals(other.gameOwnerList))
			return false;
		return true;
	}
	
	
}
