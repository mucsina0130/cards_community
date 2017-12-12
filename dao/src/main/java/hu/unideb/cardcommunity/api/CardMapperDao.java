package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.CardMapper;

public interface CardMapperDao {
	CardMapper save(CardMapper entity);
	List<CardMapper> save(List<CardMapper> entities);
	CardMapper findByGameTypeId(long id);
	CardMapper findById(long id);
	List<CardMapper> findAll();
}
