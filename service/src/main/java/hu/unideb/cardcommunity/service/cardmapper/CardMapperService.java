package hu.unideb.cardcommunity.service.cardmapper;

import hu.unideb.cardcommunity.api.CardMapperDao;
import hu.unideb.cardcommunity.impl.CardMapperImpl;
import hu.unideb.cardcommunity.model.CardMapper;
import hu.unideb.cardcommunity.service.api.ICardMapperService;
import hu.unideb.cardcommunity.service.cardmapper.model.CardMapperData;

public class CardMapperService implements ICardMapperService{
	CardMapperDao cardMapper = new CardMapperImpl();
	@Override
	public CardMapperData findByGame(long gameType) {
		CardMapper mapper = cardMapper.findByGameTypeId(gameType);
		CardMapperData result = new CardMapperData();
		result.setId(mapper.getId());
		result.setBattleAttribute1(mapper.getBattleAttribute1());
		result.setBattleAttribute2(mapper.getBattleAttribute2());
		result.setField1(mapper.getField1());
		result.setField2(mapper.getField2());
		result.setField3(mapper.getField3());
		result.setField4(mapper.getField4());
		result.setField5(mapper.getField5());
		result.setGameType(mapper.getGameType().getId());
		
		return result;
	}

}
