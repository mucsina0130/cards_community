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

public class Deck {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="DECK_ID")
	int ID;
	@ManyToOne
	@JoinColumn(name="USER_ID",referencedColumnName="USER_ID")
	UserAccount user_id;
	@ManyToOne
	@JoinColumn(name="GAMTYPE_ID",referencedColumnName="GAME_TYPE_ID")
	GameType gametype;
	String NAME;
	int	NUMBER;
	int IS_PUBLIC;
	
	public Deck() {
		super();
	}

	public Deck(int iD, UserAccount user, GameType gametype, String nAME, int nUMBER, int iS_PUBLIC) {
		super();
		ID = iD;
		this.user_id = user;
		this.gametype = gametype;
		NAME = nAME;
		NUMBER = nUMBER;
		IS_PUBLIC = iS_PUBLIC;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public UserAccount getUser() {
		return user_id;
	}

	public void setUser(UserAccount user) {
		this.user_id = user;
	}

	public GameType getGametype() {
		return gametype;
	}

	public void setGametype(GameType gametype) {
		this.gametype = gametype;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public int getNUMBER() {
		return NUMBER;
	}

	public void setNUMBER(int nUMBER) {
		NUMBER = nUMBER;
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
		result = prime * result + ID;
		result = prime * result + IS_PUBLIC;
		result = prime * result + ((NAME == null) ? 0 : NAME.hashCode());
		result = prime * result + NUMBER;
		result = prime * result + ((gametype == null) ? 0 : gametype.hashCode());
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
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
		if (ID != other.ID)
			return false;
		if (IS_PUBLIC != other.IS_PUBLIC)
			return false;
		if (NAME == null) {
			if (other.NAME != null)
				return false;
		} else if (!NAME.equals(other.NAME))
			return false;
		if (NUMBER != other.NUMBER)
			return false;
		if (gametype == null) {
			if (other.gametype != null)
				return false;
		} else if (!gametype.equals(other.gametype))
			return false;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		return true;
	}

	
	
}
