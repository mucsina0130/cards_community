package hu.unideb.cardcommunity.web.deck.model;

import java.io.Serializable;

public class Deck implements Serializable{
	public String name;
	public String game ;
	public Long id;
	
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
