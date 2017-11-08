package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;

public class DeckData implements Serializable{
	public String name;
	public String game ;
	public long id;
	public long gameId;
	
	public long getGameId() {
		return gameId;
	}
	public void setGameId(int gameId) {
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
	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	} 
}
