package hu.unideb.cardcommunity.web.deck.control;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

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
	private Integer selectGame;
	
	@Autowired
	private MySessionInfo mySessionInfo;
	
	@PostConstruct
	public void init() {
		Map<String, String> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
		String parameterOne = params.get("game");
		if (parameterOne != null) {
			selectGame = Integer.valueOf(parameterOne);
			onGameChange();
		}
	}

	public void onGameChange() {
		getTableModel().setGame(selectGame);
	}

	public Integer getSelectGame() {
		return selectGame;
	}

	public void setSelectGame(Integer selectGame) {
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

	public DeckTableModel getTableModel() {
		if (tableModel == null) {

			tableModel = new DeckTableModel(mySessionInfo);
		}
		return tableModel;
	}

	public void setTableModel(DeckTableModel tableModel) {
		this.tableModel = tableModel;
	}

}
