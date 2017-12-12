package hu.unideb.cardcommunity.service.deck.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.mapping.Array;

import hu.unideb.cardcommunity.service.game.model.GameData;
import hu.unideb.cardcommunity.service.user.model.UserData;

public class DeckCardList implements Serializable{

	UserData user; 
	List<CardData> cards = new ArrayList<CardData>();
	GameData game;
	String deckName;
	public UserData getUser() {
		return user;
	}
	public void setUser(UserData user) {
		this.user = user;
	}
	public List<CardData> getCards() {
		return cards;
	}
	public void setCards(List<CardData> cards) {
		this.cards = cards;
	}
	public GameData getGame() {
		return game;
	}
	public void setGame(GameData game) {
		this.game = game;
	}
	public String getName() {
		return deckName;
	}
	public void setName(String name) {
		this.deckName = name;
	}
	
}
