package hu.unideb.cardcommunity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;

@Entity
public class RuleCard {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="RULE_CARD_ID")
	int id;
	@ManyToOne
	@JoinColumn(name="CARD_ID",referencedColumnName="CARD_ID" )
	Card card;
	int maxAmount;
	int ruleDeckId;
	
	public RuleCard() {
		super();
	}
	public RuleCard(Card idCard, int maxAmount, int ruleDeckId) {
		super();
		this.card = idCard;
		this.maxAmount = maxAmount;
		this.ruleDeckId = ruleDeckId;
	}
	public RuleCard(int id, Card idCard, int maxAmount, int ruleDeckId) {
		super();
		this.id = id;
		this.card = idCard;
		this.maxAmount = maxAmount;
		this.ruleDeckId = ruleDeckId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Card getIdCard() {
		return card;
	}
	public void setIdCard(Card idCard) {
		this.card = idCard;
	}
	public int getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(int maxAmount) {
		this.maxAmount = maxAmount;
	}
	public int getRuleDeckId() {
		return ruleDeckId;
	}
	public void setRuleDeckId(int ruleDeckId) {
		this.ruleDeckId = ruleDeckId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((card == null) ? 0 : card.hashCode());
		result = prime * result + id;
		result = prime * result + maxAmount;
		result = prime * result + ruleDeckId;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RuleCard other = (RuleCard) obj;
		if (card == null) {
			if (other.card != null)
				return false;
		} else if (!card.equals(other.card))
			return false;
		if (id != other.id)
			return false;
		if (maxAmount != other.maxAmount)
			return false;
		if (ruleDeckId != other.ruleDeckId)
			return false;
		return true;
	}
	
	
	
}
