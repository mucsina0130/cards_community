package hu.unideb.cardcommunity.model;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Entity

public class Deck {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int ID;
	@Id
	int USER_ID;
	@Id
	int GAME_TYPE;
	String NAME;
	int IS_PUBLIC;
	
	public Deck() {
		super();
	}
	public Deck(int uSER_ID, int gAME_TYPE, String nAME, int iS_PUBLIC) {
		super();
		USER_ID = uSER_ID;
		GAME_TYPE = gAME_TYPE;
		NAME = nAME;
		IS_PUBLIC = iS_PUBLIC;
	}
	public Deck(int iD, int uSER_ID, int gAME_TYPE, String nAME, int iS_PUBLIC) {
		super();
		ID = iD;
		USER_ID = uSER_ID;
		GAME_TYPE = gAME_TYPE;
		NAME = nAME;
		IS_PUBLIC = iS_PUBLIC;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int uSER_ID) {
		USER_ID = uSER_ID;
	}
	public int getGAME_TYPE() {
		return GAME_TYPE;
	}
	public void setGAME_TYPE(int gAME_TYPE) {
		GAME_TYPE = gAME_TYPE;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public int getIS_PUBLIC() {
		return IS_PUBLIC;
	}
	public void setIS_PUBLIC(int iS_PUBLIC) {
		IS_PUBLIC = iS_PUBLIC;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + GAME_TYPE;
		result = prime * result + ID;
		result = prime * result + IS_PUBLIC;
		result = prime * result + ((NAME == null) ? 0 : NAME.hashCode());
		result = prime * result + USER_ID;
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
		Deck other = (Deck) obj;
		if (GAME_TYPE != other.GAME_TYPE)
			return false;
		if (ID != other.ID)
			return false;
		if (IS_PUBLIC != other.IS_PUBLIC)
			return false;
		if (NAME == null) {
			if (other.NAME != null)
				return false;
		} else if (!NAME.equals(other.NAME))
			return false;
		if (USER_ID != other.USER_ID)
			return false;
		return true;
	}

	
}
