package hu.unideb.cardcommunity.service.api;

import hu.unideb.cardcommunity.service.cardmapper.model.CardMapperData;

public interface ICardMapperService {
	CardMapperData findByGame(long gameType);
}
