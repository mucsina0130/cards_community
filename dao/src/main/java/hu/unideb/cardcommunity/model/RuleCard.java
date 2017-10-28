package hu.unideb.cardcommunity.model;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Entity
public class RuleCard {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	@Id
	int idCard;
	int maxAmount;
	int ruleDeckId;
	
	public RuleCard() {
		super();
	}
	public RuleCard(int idCard, int maxAmount, int ruleDeckId) {
		super();
		this.idCard = idCard;
		this.maxAmount = maxAmount;
		this.ruleDeckId = ruleDeckId;
	}
	public RuleCard(int id, int idCard, int maxAmount, int ruleDeckId) {
		super();
		this.id = id;
		this.idCard = idCard;
		this.maxAmount = maxAmount;
		this.ruleDeckId = ruleDeckId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdCard() {
		return idCard;
	}
	public void setIdCard(int idCard) {
		this.idCard = idCard;
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
		result = prime * result + id;
		result = prime * result + idCard;
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
		if (id != other.id)
			return false;
		if (idCard != other.idCard)
			return false;
		if (maxAmount != other.maxAmount)
			return false;
		if (ruleDeckId != other.ruleDeckId)
			return false;
		return true;
	}
	
	
}
