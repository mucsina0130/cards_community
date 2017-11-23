package hu.unideb.cardcommunity.service.user.model;

public class UserData {
		private Long id;
		private String userName;
		private String password;
		private String mailAddress;
		
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getMailAddress() {
			return mailAddress;
		}
		public void setMailAddress(String mailAddress) {
			this.mailAddress = mailAddress;
		}
		
}
