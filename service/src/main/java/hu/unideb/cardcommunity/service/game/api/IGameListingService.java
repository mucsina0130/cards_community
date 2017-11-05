package hu.unideb.cardcommunity.service.game.api;

import java.util.List;

import hu.unideb.cardcommunity.service.game.model.GameData;

public interface IGameListingService {

	List<GameData> gameListAll();

}