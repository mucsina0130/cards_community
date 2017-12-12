package hu.unideb.cardcommunity.service.cardmapper.model;

import java.io.Serializable;

public class CardMapperData implements Serializable{
	private long id;

	private long gameType;
	
	private String battleAttribute1;

	private String battleAttribute2;

	private String field1;

	private String field2;

	private String field3;

	private String field4;

	private String field5;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getBattleAttribute1() {
		return battleAttribute1;
	}

	public void setBattleAttribute1(String battleAttribute1) {
		this.battleAttribute1 = battleAttribute1;
	}

	public String getBattleAttribute2() {
		return battleAttribute2;
	}

	public void setBattleAttribute2(String battleAttribute2) {
		this.battleAttribute2 = battleAttribute2;
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

	public long getGameType() {
		return gameType;
	}

	public void setGameType(long gameType) {
		this.gameType = gameType;
	}
	
	
}
