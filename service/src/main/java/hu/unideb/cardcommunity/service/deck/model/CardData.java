package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;

public class CardData implements Serializable{
	private String name;
	private String desc ;
	private Long cost;
	private Long battleAttribute;
	private Long battleAttribute2;
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
	public Long getCost() {
		return cost;
	}
	public void setCost(Long cost) {
		this.cost = cost;
	}
	public Long getBattleAttribute() {
		return battleAttribute;
	}
	public void setBattleAttribute(Long battleAttribute) {
		this.battleAttribute = battleAttribute;
	}
	public Long getBattleAttribute2() {
		return battleAttribute2;
	}
	public void setBattleAttribute2(Long battleAttribute2) {
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
