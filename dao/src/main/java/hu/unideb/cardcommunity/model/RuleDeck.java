package hu.unideb.cardcommunity.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Entity
public class RuleDeck {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="RULE_DECK_ID")
	int id;
	int minQuantity;
	int maxQuantity;
	int standardCardQuantity;
	
	public RuleDeck() {
		super();
	}
	public RuleDeck(int id, int minQuantity, int maxQuantity, int standardCardQuantity) {
		super();
		this.id = id;
		this.minQuantity = minQuantity;
		this.maxQuantity = maxQuantity;
		this.standardCardQuantity = standardCardQuantity;
	}
	public RuleDeck(int minQuantity, int maxQuantity, int standardCardQuantity) {
		super();
		this.minQuantity = minQuantity;
		this.maxQuantity = maxQuantity;
		this.standardCardQuantity = standardCardQuantity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMinQuantity() {
		return minQuantity;
	}
	public void setMinQuantity(int minQuantity) {
		this.minQuantity = minQuantity;
	}
	public int getMaxQuantity() {
		return maxQuantity;
	}
	public void setMaxQuantity(int maxQuantity) {
		this.maxQuantity = maxQuantity;
	}
	public int getStandardCardQuantity() {
		return standardCardQuantity;
	}
	public void setStandardCardQuantity(int standardCardQuantity) {
		this.standardCardQuantity = standardCardQuantity;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + maxQuantity;
		result = prime * result + minQuantity;
		result = prime * result + standardCardQuantity;
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
		RuleDeck other = (RuleDeck) obj;
		if (id != other.id)
			return false;
		if (maxQuantity != other.maxQuantity)
			return false;
		if (minQuantity != other.minQuantity)
			return false;
		if (standardCardQuantity != other.standardCardQuantity)
			return false;
		return true;
	}
	
	
}
