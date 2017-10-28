package hu.unideb.cardcommunity.api;

import java.util.List;

import hu.unideb.cardcommunity.model.CardMapper;

public interface CardMapperDao {
	CardMapper save(CardMapper entity);
	List<CardMapper> save(List<CardMapper> entities);
	CardMapper findById(int id);
	List<CardMapper> findAll();
}
