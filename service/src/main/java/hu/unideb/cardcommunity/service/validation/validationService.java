package hu.unideb.cardcommunity.service.validation;

import hu.unideb.cardcommunity.service.deck.model.DeckData;

public interface validationService {
	boolean mailValidation(String mailAddress);
	boolean userNameValidation(String userName);
	boolean isTheMailUsed(String mailAddress);
	boolean isTheUserNameUsed(String userName);
	boolean deckQuantity(DeckData deck);
	boolean cardQuantity(DeckData deck);
}
