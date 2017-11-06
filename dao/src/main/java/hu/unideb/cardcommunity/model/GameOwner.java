package hu.unideb.cardcommunity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

@Entity
public class GameOwner {
	@Id
	@Column(name="ROWID")
	String rowid;
	@ManyToOne
	@JoinColumn(name="GAME_TYPE_ID",referencedColumnName="GAME_TYPE_ID")
	GameType gameTypeId;
	@ManyToOne
	@JoinColumn(name="USER_ID",referencedColumnName="USER_ID")
	UserAccount userId;

	public GameOwner() {
		super();
	}
	public GameOwner(GameType gameTypeId, UserAccount userId) {
		super();
		this.gameTypeId = gameTypeId;
		this.userId = userId;
	}
	public GameType getGameTypeId() {
		return gameTypeId;
	}
	public void setGameTypeId(GameType gameTypeId) {
		this.gameTypeId = gameTypeId;
	}
	public UserAccount getUserId() {
		return userId;
	}
	public void setUserId(UserAccount userId) {
		this.userId = userId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((gameTypeId == null) ? 0 : gameTypeId.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
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
		if (gameTypeId == null) {
			if (other.gameTypeId != null)
				return false;
		} else if (!gameTypeId.equals(other.gameTypeId))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	
	
}
