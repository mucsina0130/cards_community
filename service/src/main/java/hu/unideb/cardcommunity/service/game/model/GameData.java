package hu.unideb.cardcommunity.service.game.model;

import java.math.BigDecimal;

public class GameData {
	private String name;
	private String desc;
	private long id;
	private BigDecimal isPublic;
	private String ruleOfTheGame;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public long getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public BigDecimal getIsPublic() {
		return isPublic;
	}
	public void setIsPublic(BigDecimal isPublic) {
		this.isPublic = isPublic;
	}
	public String getRuleOfTheGame() {
		return ruleOfTheGame;
	}
	public void setRuleOfTheGame(String ruleOfTheGame) {
		this.ruleOfTheGame = ruleOfTheGame;
	}
	
	
}
