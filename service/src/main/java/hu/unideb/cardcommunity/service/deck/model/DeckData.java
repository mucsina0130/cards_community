package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

public class DeckData implements Serializable{
	public String name;
	public String game ;
	public Long id;
	public Long gameId;
	public List<CardData> cardId;
	public BigDecimal isPublic;
	public Long userId;
	public String username;
	
	public Long getGameId() {
		return gameId;
	}
	public void setGameId(Long gameId) {
		this.gameId = gameId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public List<CardData> getCardId() {
		return cardId;
	}
	public void setCardId(List<CardData> cardId) {
		this.cardId = cardId;
	}
	public BigDecimal getIsPublic() {
		return isPublic;
	}
	public void setIsPublic(BigDecimal isPublic) {
		this.isPublic = isPublic;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	} 
	
	
}
