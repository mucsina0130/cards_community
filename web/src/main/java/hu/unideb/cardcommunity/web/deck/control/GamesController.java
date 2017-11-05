package hu.unideb.cardcommunity.web.deck.control;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.service.game.GameListingService;
import hu.unideb.cardcommunity.service.game.api.IGameListingService;
import hu.unideb.cardcommunity.service.game.model.GameData;

@Component
@Scope("session")
public class GamesController {
	private List<GameData> games;
	private IGameListingService gls = new GameListingService();
	
	public List<GameData> getGames() {
		if (games == null) {	
			games = gls.gameListAll();
		}
		return games;
	}

	public void setGames(List<GameData> games) {
		this.games = games;
	}

}
