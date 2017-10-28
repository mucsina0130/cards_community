package hu.unideb.cardcommunity.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;

@Entity
public class Card {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int ID;
	@Id
	int GAME_TYPE_ID;
	String NAME;
	String COST;
	String DESCRIPTION;
	String BATTLE_ATTRIBUTE_1;
	String BATTLE_ATTRIBUTE_2;
	String FIELD_1;
	String FIELD_2;
	String FIELD_3;
	String FIELD_4;
	String FIELD_5;

	public Card(int gAME_TYPE_ID, String nAME, String cOST, String dESCRIPTION, String bATTLE_ATTRIBUTE_1,
			String bATTLE_ATTRIBUTE_2, String fIELD_1, String fIELD_2, String fIELD_3, String fIELD_4, String fIELD_5) {
		super();
		GAME_TYPE_ID = gAME_TYPE_ID;
		NAME = nAME;
		COST = cOST;
		DESCRIPTION = dESCRIPTION;
		BATTLE_ATTRIBUTE_1 = bATTLE_ATTRIBUTE_1;
		BATTLE_ATTRIBUTE_2 = bATTLE_ATTRIBUTE_2;
		FIELD_1 = fIELD_1;
		FIELD_2 = fIELD_2;
		FIELD_3 = fIELD_3;
		FIELD_4 = fIELD_4;
		FIELD_5 = fIELD_5;
	}

	public Card() {
		super();
	}

	public Card(int iD, int gAME_TYPE_ID, String nAME, String cOST, String dESCRIPTION, String bATTLE_ATTRIBUTE_1,
			String bATTLE_ATTRIBUTE_2, String fIELD_1, String fIELD_2, String fIELD_3, String fIELD_4, String fIELD_5) {
		super();
		ID = iD;
		GAME_TYPE_ID = gAME_TYPE_ID;
		NAME = nAME;
		COST = cOST;
		DESCRIPTION = dESCRIPTION;
		BATTLE_ATTRIBUTE_1 = bATTLE_ATTRIBUTE_1;
		BATTLE_ATTRIBUTE_2 = bATTLE_ATTRIBUTE_2;
		FIELD_1 = fIELD_1;
		FIELD_2 = fIELD_2;
		FIELD_3 = fIELD_3;
		FIELD_4 = fIELD_4;
		FIELD_5 = fIELD_5;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getGAME_TYPE_ID() {
		return GAME_TYPE_ID;
	}

	public void setGAME_TYPE_ID(int gAME_TYPE_ID) {
		GAME_TYPE_ID = gAME_TYPE_ID;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getCOST() {
		return COST;
	}

	public void setCOST(String cOST) {
		COST = cOST;
	}

	public String getDESCRIPTION() {
		return DESCRIPTION;
	}

	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}

	public String getBATTLE_ATTRIBUTE_1() {
		return BATTLE_ATTRIBUTE_1;
	}

	public void setBATTLE_ATTRIBUTE_1(String bATTLE_ATTRIBUTE_1) {
		BATTLE_ATTRIBUTE_1 = bATTLE_ATTRIBUTE_1;
	}

	public String getBATTLE_ATTRIBUTE_2() {
		return BATTLE_ATTRIBUTE_2;
	}

	public void setBATTLE_ATTRIBUTE_2(String bATTLE_ATTRIBUTE_2) {
		BATTLE_ATTRIBUTE_2 = bATTLE_ATTRIBUTE_2;
	}

	public String getFIELD_1() {
		return FIELD_1;
	}

	public void setFIELD_1(String fIELD_1) {
		FIELD_1 = fIELD_1;
	}

	public String getFIELD_2() {
		return FIELD_2;
	}

	public void setFIELD_2(String fIELD_2) {
		FIELD_2 = fIELD_2;
	}

	public String getFIELD_3() {
		return FIELD_3;
	}

	public void setFIELD_3(String fIELD_3) {
		FIELD_3 = fIELD_3;
	}

	public String getFIELD_4() {
		return FIELD_4;
	}

	public void setFIELD_4(String fIELD_4) {
		FIELD_4 = fIELD_4;
	}

	public String getFIELD_5() {
		return FIELD_5;
	}

	public void setFIELD_5(String fIELD_5) {
		FIELD_5 = fIELD_5;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((BATTLE_ATTRIBUTE_1 == null) ? 0 : BATTLE_ATTRIBUTE_1.hashCode());
		result = prime * result + ((BATTLE_ATTRIBUTE_2 == null) ? 0 : BATTLE_ATTRIBUTE_2.hashCode());
		result = prime * result + ((COST == null) ? 0 : COST.hashCode());
		result = prime * result + ((DESCRIPTION == null) ? 0 : DESCRIPTION.hashCode());
		result = prime * result + ((FIELD_1 == null) ? 0 : FIELD_1.hashCode());
		result = prime * result + ((FIELD_2 == null) ? 0 : FIELD_2.hashCode());
		result = prime * result + ((FIELD_3 == null) ? 0 : FIELD_3.hashCode());
		result = prime * result + ((FIELD_4 == null) ? 0 : FIELD_4.hashCode());
		result = prime * result + ((FIELD_5 == null) ? 0 : FIELD_5.hashCode());
		result = prime * result + GAME_TYPE_ID;
		result = prime * result + ID;
		result = prime * result + ((NAME == null) ? 0 : NAME.hashCode());
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
		Card other = (Card) obj;
		if (BATTLE_ATTRIBUTE_1 == null) {
			if (other.BATTLE_ATTRIBUTE_1 != null)
				return false;
		} else if (!BATTLE_ATTRIBUTE_1.equals(other.BATTLE_ATTRIBUTE_1))
			return false;
		if (BATTLE_ATTRIBUTE_2 == null) {
			if (other.BATTLE_ATTRIBUTE_2 != null)
				return false;
		} else if (!BATTLE_ATTRIBUTE_2.equals(other.BATTLE_ATTRIBUTE_2))
			return false;
		if (COST == null) {
			if (other.COST != null)
				return false;
		} else if (!COST.equals(other.COST))
			return false;
		if (DESCRIPTION == null) {
			if (other.DESCRIPTION != null)
				return false;
		} else if (!DESCRIPTION.equals(other.DESCRIPTION))
			return false;
		if (FIELD_1 == null) {
			if (other.FIELD_1 != null)
				return false;
		} else if (!FIELD_1.equals(other.FIELD_1))
			return false;
		if (FIELD_2 == null) {
			if (other.FIELD_2 != null)
				return false;
		} else if (!FIELD_2.equals(other.FIELD_2))
			return false;
		if (FIELD_3 == null) {
			if (other.FIELD_3 != null)
				return false;
		} else if (!FIELD_3.equals(other.FIELD_3))
			return false;
		if (FIELD_4 == null) {
			if (other.FIELD_4 != null)
				return false;
		} else if (!FIELD_4.equals(other.FIELD_4))
			return false;
		if (FIELD_5 == null) {
			if (other.FIELD_5 != null)
				return false;
		} else if (!FIELD_5.equals(other.FIELD_5))
			return false;
		if (GAME_TYPE_ID != other.GAME_TYPE_ID)
			return false;
		if (ID != other.ID)
			return false;
		if (NAME == null) {
			if (other.NAME != null)
				return false;
		} else if (!NAME.equals(other.NAME))
			return false;
		return true;
	}

}
