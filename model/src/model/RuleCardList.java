package model;

import java.util.List;

public class RuleCardList {
	
	List<RuleCard> ruleCardList;

	public RuleCardList(List<RuleCard> ruleCardList) {
		super();
		this.ruleCardList = ruleCardList;
	}

	public RuleCardList() {
		super();
	}

	public List<RuleCard> getRuleCardList() {
		return ruleCardList;
	}

	public void setRuleCardList(List<RuleCard> ruleCardList) {
		this.ruleCardList = ruleCardList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ruleCardList == null) ? 0 : ruleCardList.hashCode());
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
		RuleCardList other = (RuleCardList) obj;
		if (ruleCardList == null) {
			if (other.ruleCardList != null)
				return false;
		} else if (!ruleCardList.equals(other.ruleCardList))
			return false;
		return true;
	}
	
}
