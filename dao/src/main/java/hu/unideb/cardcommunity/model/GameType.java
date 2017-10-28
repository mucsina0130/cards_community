package hu.unideb.cardcommunity.model;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Entity
public class GameType {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	@Id
	int ruleDeckId;
	String name;
	String shortDesc;
	String gameRule;
	int isPublic;
	
	public GameType() {
		super();
	}
	public GameType(int id, int ruleDeckId, String name, String shortDesc, String gameRule, int isPublic) {
		super();
		this.id = id;
		this.ruleDeckId = ruleDeckId;
		this.name = name;
		this.shortDesc = shortDesc;
		this.gameRule = gameRule;
		this.isPublic = isPublic;
	}
	public GameType(int ruleDeckId, String name, String shortDesc, String gameRule, int isPublic) {
		super();
		this.ruleDeckId = ruleDeckId;
		this.name = name;
		this.shortDesc = shortDesc;
		this.gameRule = gameRule;
		this.isPublic = isPublic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRuleDeckId() {
		return ruleDeckId;
	}
	public void setRuleDeckId(int ruleDeckId) {
		this.ruleDeckId = ruleDeckId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShortDesc() {
		return shortDesc;
	}
	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}
	public String getGameRule() {
		return gameRule;
	}
	public void setGameRule(String gameRule) {
		this.gameRule = gameRule;
	}
	public int getIsPublic() {
		return isPublic;
	}
	public void setIsPublic(int isPublic) {
		this.isPublic = isPublic;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((gameRule == null) ? 0 : gameRule.hashCode());
		result = prime * result + id;
		result = prime * result + isPublic;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ruleDeckId;
		result = prime * result + ((shortDesc == null) ? 0 : shortDesc.hashCode());
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
		GameType other = (GameType) obj;
		if (gameRule == null) {
			if (other.gameRule != null)
				return false;
		} else if (!gameRule.equals(other.gameRule))
			return false;
		if (id != other.id)
			return false;
		if (isPublic != other.isPublic)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (ruleDeckId != other.ruleDeckId)
			return false;
		if (shortDesc == null) {
			if (other.shortDesc != null)
				return false;
		} else if (!shortDesc.equals(other.shortDesc))
			return false;
		return true;
	}
	
	
}
