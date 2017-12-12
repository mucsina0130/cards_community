package hu.unideb.cardcommunity.web.card.control;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;

import org.apache.commons.beanutils.BeanUtils;
import org.primefaces.context.RequestContext;
import org.primefaces.event.DragDropEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.service.api.ICardMapperService;
import hu.unideb.cardcommunity.service.cardmapper.CardMapperService;
import hu.unideb.cardcommunity.service.cardmapper.model.CardMapperData;
import hu.unideb.cardcommunity.service.deck.CardListingService;
import hu.unideb.cardcommunity.service.deck.DeckCardListingService;
import hu.unideb.cardcommunity.service.deck.DeckListingService;
import hu.unideb.cardcommunity.service.deck.api.ICardListingService;
import hu.unideb.cardcommunity.service.deck.api.IDeckCardListingService;
import hu.unideb.cardcommunity.service.deck.api.IDeckListingService;
import hu.unideb.cardcommunity.service.deck.model.CardData;
import hu.unideb.cardcommunity.service.deck.model.DeckData;
import hu.unideb.cardcommunity.service.game.GameListingService;
import hu.unideb.cardcommunity.service.game.api.IGameListingService;
import hu.unideb.cardcommunity.service.game.model.GameData;
import hu.unideb.cardcommunity.service.gamerules.api.CardRulesService;
import hu.unideb.cardcommunity.service.gamerules.api.DeckRulesService;
import hu.unideb.cardcommunity.service.gamerules.interfaces.IcardRules;
import hu.unideb.cardcommunity.service.gamerules.interfaces.IdeckRules;
import hu.unideb.cardcommunity.service.gamerules.model.CardRulesData;
import hu.unideb.cardcommunity.service.gamerules.model.DeckRulesData;
import hu.unideb.cardcommunity.web.session.MySessionInfo;

@Component
@Scope("view")
public class CardController {
	private ICardListingService cls = new CardListingService();
	private IGameListingService gls = new GameListingService();
	private IDeckCardListingService dcls = new DeckCardListingService();
	private IDeckListingService dls = new DeckListingService();
	private ICardMapperService cms = new CardMapperService();
	private IdeckRules dr = new DeckRulesService();
	private IcardRules cr = new CardRulesService();
	private List<CardData> cards;
	private List<CardData> selectedCards;
	private List<SelectItem> games;
	private Long selectGame;
	private CardData selectedCard;
	private String deckName;
	private DeckRulesData deckRulesData;
	private List<CardRulesData> cardRules;
	private boolean publicDeck;
	private Long modDeckId;
	private String filterText;
	private CardMapperData cardMapper;


	@Autowired
	private MySessionInfo mySessionInfo;

	@PostConstruct
	public void init() {
		Map<String, String> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
		String parameterOne = params.get("game");
		if (parameterOne != null) {
			selectGame = Long.valueOf(parameterOne);
			onGameChange();
		}
		String parameterTwo = params.get("deck");
		if (parameterTwo != null) {
			selectedCards = dcls.cardListByDeck(Long.valueOf(parameterTwo));
			DeckData dd = dls.listByUserId(mySessionInfo.getCurrentUser().getId()).stream()
					.filter(d -> d.getId() == Long.valueOf(parameterTwo)).findFirst().orElse(null);
			if (dd != null) {
				modDeckId = dd.getId();
				deckName = dd.getName();
				publicDeck = BigDecimal.ONE.equals(dd.getIsPublic());
			}
		}
	}

	public void onGameChange() {
		if (selectGame != null) {
			cards = cls.cardListByGame(selectGame);
			deckRulesData = dr.getDeckRulesData(selectGame);
			cardRules = cr.getCardRules(deckRulesData.getDeckRuleId());
			selectedCards = new ArrayList<>();
			cardMapper = cms.findByGame(selectGame);
			filterText = "";
		}
	}

	public void onCardDrop(DragDropEvent ddEvent) throws Exception {
		CardData card = ((CardData) ddEvent.getData());
		CardData newcard = (CardData) BeanUtils.cloneBean(card);
		if (deckRulesData.maxQuantity.compareTo(new BigDecimal(getSelectedCards().size())) <= 0) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Hiba", "Túl sok kártya a pakliban"));
			return;
		}
		CardRulesData defCardRule = new CardRulesData();
		defCardRule.setMaxAmount(deckRulesData.getStandardCardQuantity());
		CardRulesData rule = cardRules.stream().filter(r -> r.cardId == card.getId()).findFirst().orElse(defCardRule);
		long cardCount = getSelectedCards().stream().filter(c -> c.getId() == card.getId()).mapToLong(c -> 1L).sum();
		if (rule != null && rule.getMaxAmount().compareTo(new BigDecimal(cardCount)) <= 0) {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage("Hiba", "Túl sok " + card.getName() + " kártya a pakliban"));
			return;
		}
		getSelectedCards().add(newcard);
	}

	public List<SelectItem> getGames() {
		if (games == null) {
			List<GameData> gameDatas = gls.gameListAll();
			games = new ArrayList<>();
			games.add(new SelectItem(null, ""));
			for (GameData gameData : gameDatas) {
				SelectItem si = new SelectItem(gameData.getId(), gameData.getName());
				games.add(si);
			}
		}
		return games;
	}

	public String getDeckName() {
		return deckName;
	}

	public void setDeckName(String deckName) {
		this.deckName = deckName;
	}

	public List<CardData> getCards() {
		if (cards == null) {
			cards = new ArrayList<>();
		}
		return cards;
	}

	public void setCards(List<CardData> cards) {
		this.cards = cards;
	}

	public boolean isPublicDeck() {
		return publicDeck;
	}

	public void setPublicDeck(boolean publicDeck) {
		this.publicDeck = publicDeck;
	}

	public List<CardData> getSelectedCards() {
		if (selectedCards == null) {
			selectedCards = new ArrayList<>();
		}
		return selectedCards;
	}

	public void setSelectedCards(List<CardData> selectedCards) {
		this.selectedCards = selectedCards;
	}

	public Long getSelectGame() {
		return selectGame;
	}

	public void setSelectGame(Long selectGame) {
		this.selectGame = selectGame;
	}

	public CardData getSelectedCard() {
		return selectedCard;
	}

	public void setSelectedCard(CardData selectedCard) {
		this.selectedCard = selectedCard;
	}

	public String getCardShortName(CardData card) {
		if (card == null) {
			return "";
		}
		String name = card.getName();
		if (name.length() > 28) {
			name = (name.substring(0, 24) + "...");
		}
		return name;
	}

	public Long getModDeckId() {
		return modDeckId;
	}

	public void setModDeckId(Long modDeckId) {
		this.modDeckId = modDeckId;
	}

	public String getFilterText() {
		return filterText;
	}

	public void setFilterText(String filterText) {
		this.filterText = filterText;
	}

	public CardMapperData getCardMapper() {
		return cardMapper;
	}

	public void setCardMapper(CardMapperData cardMapper) {
		this.cardMapper = cardMapper;
	}

	public void search() {
		if (filterText != null && filterText.trim().length() > 0) {
			cards = cls.cardListByKeyWord(filterText, selectGame);
		} else {
			cards = cls.cardListByGame(selectGame);
		}
	}

	public void onDeleteButton(CardData card) {
		if (card != null) {
			selectedCards.remove(card);
		}
	}

	public void save() {
		int cardCount = selectedCards.size();
		if (cardCount < deckRulesData.getMinQuantity().intValue()) {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage("Hiba", String.format("Túl kevés kártya a pakliban (%d/%d)", cardCount,
							deckRulesData.getMinQuantity().intValue())));
			return;
		}
		if (deckName == null || deckName.trim().length() == 0) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Hiba", "Adjál meg egy nevet"));
			return;
		}
		DeckData newDeck = new DeckData();
		newDeck.setCardId(selectedCards);
		newDeck.setGameId(selectGame);
		newDeck.setName(deckName);
		newDeck.setUserId(mySessionInfo.getCurrentUser().getId());
		newDeck.setIsPublic(publicDeck ? BigDecimal.ONE : BigDecimal.ZERO);
		try {
			if (modDeckId == null) {
				dls.saveDeck(newDeck);
			} else {
				newDeck.setId(modDeckId);
				dls.updateDeck(newDeck);
			}
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Sikeres mentés", ""));
			RequestContext.getCurrentInstance().execute("PF('savedialog').hide();");
		} catch (Exception e) {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Hiba", "Sikertelen mentés"));
			e.printStackTrace();
		}
	}
}
