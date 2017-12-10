package hu.unideb.cardcommunity.web.deck.control;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.service.deck.DeckCardListingService;
import hu.unideb.cardcommunity.service.deck.DeckListingService;
import hu.unideb.cardcommunity.service.deck.api.IDeckCardListingService;
import hu.unideb.cardcommunity.service.deck.api.IDeckListingService;
import hu.unideb.cardcommunity.service.deck.model.CardData;
import hu.unideb.cardcommunity.service.deck.model.DeckData;
import hu.unideb.cardcommunity.service.game.GameListingService;
import hu.unideb.cardcommunity.service.game.api.IGameListingService;
import hu.unideb.cardcommunity.service.game.model.GameData;
import hu.unideb.cardcommunity.web.deck.model.DeckTableModel;
import hu.unideb.cardcommunity.web.session.MySessionInfo;

@Component
@Scope("view")
public class DecksController implements Serializable {
	private DeckTableModel tableModel;
	private List<SelectItem> games;
	private IGameListingService gls = new GameListingService();
	private Long selectGame;
	private DeckData deck;
	private IDeckCardListingService dcls = new DeckCardListingService();
	private IDeckListingService dls = new DeckListingService();

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
	}

	public void onGameChange() {
		getTableModel().setGame(selectGame);
	}

	public Long getSelectGame() {
		return selectGame;
	}

	public void setSelectGame(Long selectGame) {
		this.selectGame = selectGame;
	}

	public List<SelectItem> getGames() {
		if (games == null) {
			List<GameData> gameDatas = gls.gameListAll();
			games = new ArrayList<>();
			games.add(new SelectItem(null, "Minden"));
			for (GameData gameData : gameDatas) {
				SelectItem si = new SelectItem(gameData.getId(), gameData.getName());
				games.add(si);
			}
		}
		return games;
	}

	public DeckData getDeck() {
		return deck;
	}

	public void setDeck(DeckData deck) {
		this.deck = deck;
	}

	public DeckTableModel getTableModel() {
		if (tableModel == null) {

			tableModel = new DeckTableModel(mySessionInfo);
		}
		return tableModel;
	}

	public void setTableModel(DeckTableModel tableModel) {
		this.tableModel = tableModel;
	}

	public List<CardData> cardlist() {
		if (deck == null) {
			return Collections.emptyList();
		}
		return dcls.cardListByDeck(deck.getId());
	}

	public String modify(DeckData deck) {
		return "/cards/newdeck.xhtml?game=" + deck.getGameId() + "&deck=" + deck.getId() + "&faces-redirect=true";
	}
	public void delete(DeckData deck) {
		try {
			dls.deleteDeck(deck);
		} catch (Exception e) {
			FacesContext.getCurrentInstance().addMessage(null,
			new FacesMessage(FacesMessage.SEVERITY_ERROR, "Hiba", "Sikertelen törlés"));
			e.printStackTrace();
		}
	}

}
