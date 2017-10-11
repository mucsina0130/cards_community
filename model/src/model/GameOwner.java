package model;

public class GameOwner {

	int gameTypeId;
	int userId;

	public GameOwner() {
		super();
	}
	public GameOwner(int gameTypeId, int userId) {
		super();
		this.gameTypeId = gameTypeId;
		this.userId = userId;
	}
	public int getGameTypeId() {
		return gameTypeId;
	}
	public void setGameTypeId(int gameTypeId) {
		this.gameTypeId = gameTypeId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + gameTypeId;
		result = prime * result + userId;
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
		GameOwner other = (GameOwner) obj;
		if (gameTypeId != other.gameTypeId)
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	
	
}
