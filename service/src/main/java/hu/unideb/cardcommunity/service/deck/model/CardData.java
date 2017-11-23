package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;

public class CardData implements Serializable{
	private String name;
	private String desc ;
	private String cost;
	private String battleAttribute;
	private String battleAttribute2;
	private Long id;
	private String field1;
	private String field2;
	private String field3;
	private String field4;
	private String field5;
	
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
	public String getField1() {
		return field1;
	}
	public void setField1(String field1) {
		this.field1 = field1;
	}
	public String getField2() {
		return field2;
	}
	public void setField2(String field2) {
		this.field2 = field2;
	}
	public String getField3() {
		return field3;
	}
	public void setField3(String field3) {
		this.field3 = field3;
	}
	public String getField4() {
		return field4;
	}
	public void setField4(String field4) {
		this.field4 = field4;
	}
	public String getField5() {
		return field5;
	}
	public void setField5(String field5) {
		this.field5 = field5;
	}

	
}
