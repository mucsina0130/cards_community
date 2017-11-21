package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;

public class CardData implements Serializable{
	private String name;
	private String desc ;
	private String cost;
	private String battleAttribute;
	private String battleAttribute2;
	private Long id;
	public String getName() {
		return name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getBattleAttribute() {
		return battleAttribute;
	}
	public void setBattleAttribute(String battleAttribute) {
		this.battleAttribute = battleAttribute;
	}
	public String getBattleAttribute2() {
		return battleAttribute2;
	}
	public void setBattleAttribute2(String battleAttribute2) {
		this.battleAttribute2 = battleAttribute2;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}

}
