package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.GameType;

public interface GameTypeDao {
	GameType save(GameType entity);
	List<GameType> save(List<GameType> entities);
	GameType findByName(String name);
	List<GameType> findAll();
	List<GameType> findById(long gameTypeId);
}
