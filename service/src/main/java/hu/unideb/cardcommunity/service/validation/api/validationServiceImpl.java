package hu.unideb.cardcommunity.service.validation.api;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import hu.unideb.cardcommunity.api.UserAccountDao;
import hu.unideb.cardcommunity.impl.UserAccountImpl;
import hu.unideb.cardcommunity.model.UserAccount;
import hu.unideb.cardcommunity.service.deck.model.CardData;
import hu.unideb.cardcommunity.service.deck.model.DeckData;
import hu.unideb.cardcommunity.service.gamerules.api.CardRulesService;
import hu.unideb.cardcommunity.service.gamerules.api.DeckRulesService;
import hu.unideb.cardcommunity.service.gamerules.model.CardRulesData;
import hu.unideb.cardcommunity.service.gamerules.model.DeckRulesData;
import hu.unideb.cardcommunity.service.user.UserService;
import hu.unideb.cardcommunity.service.user.model.UserData;
import hu.unideb.cardcommunity.service.validation.validationService;

public class validationServiceImpl implements validationService{
	private UserAccountDao useraccountimpl = new UserAccountImpl();
	@Override
	public boolean mailValidation(String mailAddress) {
		Pattern mailPattern= Pattern.compile("[a-zA-Z]+[a-zA-Z0-9_\\.-]*@[a-zA-Z]+[a-zA-Z0-9_-]*\\.[a-zA-Z]{2,3}");
		Matcher mailMatcher = mailPattern.matcher(mailAddress);
		boolean b = mailMatcher.matches();
		
		return b;
	}

	@Override
	public boolean userNameValidation(String userName) {
		Pattern userPattern= Pattern.compile("[a-zA-Z]+[a-zA-Z0-9_\\.-]*[a-zA-Z0-9]+");
		Matcher userMatcher = userPattern.matcher(userName);
		boolean b = userMatcher.matches();
		
		return b;
	}

	@Override
	public boolean isTheMailUsed(String mailAddress) {
		try {
			UserAccount user = useraccountimpl.findByMail(mailAddress);
			
			return true;
			
		} catch (Exception e) {			
			return false;
		}
	}

	@Override
	public boolean isTheUserNameUsed(String userName) {
		UserService uServise = new UserService();
		UserData user = uServise.findByUserName(userName);
		if(user.getUserName() == null)
			return false;
		else 
			return true;
	}

	@Override
	public boolean deckQuantity(DeckData deck) {
		DeckRulesService deckRulesService = new DeckRulesService();
		DeckRulesData drd = deckRulesService.getDeckRulesData(deck.getGameId());
		if(drd.getMinQuantity().intValue() < deck.getCardId().size() || drd.getMaxQuantity().intValue() > deck.getCardId().size() )
			return false;
		else
			return true;
	}

	@Override
	public boolean cardQuantity(DeckData deck) {
		CardRulesService cardRule = new CardRulesService();
		List<CardRulesData> crd = cardRule.getCardRules(deck.getId());
		DeckRulesService deckRulesService = new DeckRulesService();
		DeckRulesData drd = deckRulesService.getDeckRulesData(deck.getGameId());
			List<CardData> cards = deck.getCardId();
			List<Long> cardId = new ArrayList<>();
			for(int i=0;i<cards.size();i++)
			{
				cardId.add(cards.get(i).getId());
			}
			Collections.sort(cardId, Collections.reverseOrder());
			for(int i=0;i<cardId.size()-1;i++)
			{
				for(int j=i+1;j<cardId.size()-1;j++)
				{
					int counter=0;
					if (cardId.get(i)==cardId.get(j)) {
						counter++;
						if(crd.get(0) != null)	
							{
								for(int k=0;k<crd.size();k++)
									if(cardId.get(i) == crd.get(k).getCardId() && crd.get(k).getMaxAmount().intValue() > counter)
										return false;
							}
						if(counter > drd.getStandardCardQuantity().intValue())
							return false;
						Long temp = cardId.get(i+1);
						cardId.set(i+1, cardId.get(j));
						cardId.set(j, temp);
						i++;
					}
				}
			}
			return true;
		
		
	}

}
