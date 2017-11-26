package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;

public class DeckData implements Serializable{
	public String name;
	public String game ;
	public Long id;
	public Long gameId;
	
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
}
