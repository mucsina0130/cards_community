package hu.unideb.cardcommunity.web.card.control;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;

import org.apache.commons.beanutils.BeanUtils;
import org.primefaces.event.DragDropEvent;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.service.deck.CardListingService;
import hu.unideb.cardcommunity.service.deck.api.ICardListingService;
import hu.unideb.cardcommunity.service.deck.model.CardData;
import hu.unideb.cardcommunity.service.game.GameListingService;
import hu.unideb.cardcommunity.service.game.api.IGameListingService;
import hu.unideb.cardcommunity.service.game.model.GameData;

@Component
@Scope("view")
public class CardController {
	private ICardListingService cls = new CardListingService();
	private IGameListingService gls = new GameListingService();
	private List<CardData> cards;
	private List<CardData> selectedCards;
	private List<SelectItem> games;
	private Long selectGame;
	private CardData selectedCard;

	@PostConstruct
	public void init() {
		Map<String, String> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
		String parameterOne = params.get("game");
		if (parameterOne != null) {
			selectGame = Long.valueOf(parameterOne);
			onGameChange();
		}
	}

	public void onGameChange() {
		if (selectGame != null) {
			cards = cls.cardListByGame(selectGame);
		}
	}

	public void onCardDrop(DragDropEvent ddEvent) throws Exception {
		CardData card = ((CardData) ddEvent.getData());
		CardData newcard = (CardData) BeanUtils.cloneBean(card);

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

	public List<CardData> getCards() {
		if (cards == null) {
			cards = new ArrayList<>();
		}
		return cards;
	}

	public void setCards(List<CardData> cards) {
		this.cards = cards;
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

	public void onDeleteButton(CardData card) {
		if (card != null) {
			selectedCards.remove(card);
		}
	}
}
