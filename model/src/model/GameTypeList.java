package model;

import java.util.List;

public class GameTypeList {
	List<GameType> gameTypeList;

	public GameTypeList(List<GameType> gameTypeList) {
		super();
		this.gameTypeList = gameTypeList;
	}

	public GameTypeList() {
		super();
	}

	public List<GameType> getGameTypeList() {
		return gameTypeList;
	}

	public void setGameTypeList(List<GameType> gameTypeList) {
		this.gameTypeList = gameTypeList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((gameTypeList == null) ? 0 : gameTypeList.hashCode());
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
		GameTypeList other = (GameTypeList) obj;
		if (gameTypeList == null) {
			if (other.gameTypeList != null)
				return false;
		} else if (!gameTypeList.equals(other.gameTypeList))
			return false;
		return true;
	}
	
}
