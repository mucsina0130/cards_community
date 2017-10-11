package model;

import java.util.List;

public class UserAccountList {
	List<UserAccount> accountList;

	public UserAccountList(List<UserAccount> accountList) {
		super();
		this.accountList = accountList;
	}

	public UserAccountList() {
		super();
	}

	public List<UserAccount> getAccountList() {
		return accountList;
	}

	public void setAccountList(List<UserAccount> accountList) {
		this.accountList = accountList;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((accountList == null) ? 0 : accountList.hashCode());
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
		UserAccountList other = (UserAccountList) obj;
		if (accountList == null) {
			if (other.accountList != null)
				return false;
		} else if (!accountList.equals(other.accountList))
			return false;
		return true;
	}
	
	
}
