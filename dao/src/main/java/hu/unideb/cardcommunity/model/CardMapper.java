package hu.unideb.cardcommunity.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CARD_MAPPER database table.
 * 
 */
@Entity
@Table(name="CARD_MAPPER")
public class CardMapper extends CardBase implements Serializable {
	private static final long serialVersionUID = 1L;	


	@Id
	@GeneratedValue(generator="seqMapperGen")
	@SequenceGenerator(name="seqMapperGen",sequenceName="cardMapper_seq", allocationSize=1)
	private long id;
	
	//bi-directional many-to-one association to GameType
	@ManyToOne
	@JoinColumn(name="GAME_TYPE_ID")
	private GameType gameType;

	public CardMapper() {
	}
	
	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public GameType getGameType() {
		return this.gameType;
	}

	public void setGameType(GameType gameType) {
		this.gameType = gameType;
	}
	

}