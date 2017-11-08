package hu.unideb.cardcommunity.service.game;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import hu.unideb.cardcommunity.api.GameTypeDao;
import hu.unideb.cardcommunity.impl.GameTypeImpl;
import hu.unideb.cardcommunity.model.Deck;
import hu.unideb.cardcommunity.model.GameType;
import hu.unideb.cardcommunity.service.deck.model.DeckData;
import hu.unideb.cardcommunity.service.game.api.IGameListingService;
import hu.unideb.cardcommunity.service.game.model.GameData;

public class GameListingService implements IGameListingService {
	private GameTypeDao gametypeimpl = new GameTypeImpl();
	@Override
	public List<GameData> gameListAll() {
		
		List<GameType> game = gametypeimpl.findAll();
		List<GameData> result = new ArrayList<>();
		for (GameType d : game) {
			GameData gt = new GameData();
			gt.setName(d.getName());
			gt.setDesc(d.getShorDescription());
			result.add(gt);
		}
		return result;
	}
	
	

}
