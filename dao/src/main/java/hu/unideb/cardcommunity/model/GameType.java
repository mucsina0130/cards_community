package hu.unideb.cardcommunity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;

@Entity
public class GameType {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="GAME_TYPE_ID")
	int ID;
	@ManyToOne
	@JoinColumn(name="RULE_DECK_ID", referencedColumnName="RULE_DECK_ID")
	RuleDeck ruleDeck;
	String name;
	String shortDesc;
	String gameRule;
	int isPublic;
	
	public GameType() {
		super();
	}
	public GameType(int id, RuleDeck ruleDeckId, String name, String shortDesc, String gameRule, int isPublic) {
		super();
		this.ID = id;
		this.ruleDeck = ruleDeckId;
		this.name = name;
		this.shortDesc = shortDesc;
		this.gameRule = gameRule;
		this.isPublic = isPublic;
	}
	public GameType(RuleDeck ruleDeckId, String name, String shortDesc, String gameRule, int isPublic) {
		super();
		this.ruleDeck = ruleDeckId;
		this.name = name;
		this.shortDesc = shortDesc;
		this.gameRule = gameRule;
		this.isPublic = isPublic;
	}
	public int getId() {
		return ID;
	}
	public void setId(int id) {
		this.ID = id;
	}
	public RuleDeck getRuleDeckId() {
		return ruleDeck;
	}
	public void setRuleDeckId(RuleDeck ruleDeckId) {
		this.ruleDeck = ruleDeckId;
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
		result = prime * result + ID;
		result = prime * result + isPublic;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((ruleDeck == null) ? 0 : ruleDeck.hashCode());
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
		if (ID != other.ID)
			return false;
		if (isPublic != other.isPublic)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (ruleDeck == null) {
			if (other.ruleDeck != null)
				return false;
		} else if (!ruleDeck.equals(other.ruleDeck))
			return false;
		if (shortDesc == null) {
			if (other.shortDesc != null)
				return false;
		} else if (!shortDesc.equals(other.shortDesc))
			return false;
		return true;
	}
	
	
}
