package hu.unideb.cardcommunity.web.deck.control;

import java.io.Serializable;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.web.deck.model.DeckTableModel;

@Component
@Scope("session")
public class DecksController implements Serializable {
	private DeckTableModel tableModel;

	public DeckTableModel getTableModel() {
		if (tableModel == null) {
			tableModel = new DeckTableModel();
		}
		return tableModel;
	}

	public void setTableModel(DeckTableModel tableModel) {
		this.tableModel = tableModel;
	}

}
