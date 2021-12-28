package bean;

public class Account {
	private String userID;
	private String userName;
	private String userPassword;
	private String name;
	private String address;
	private String phoneNumber;
	private String mail;
	private String accountNumber;
	private Role role;
	
	public Account() {
	}

	public Account(String userID, String userName, String userPassword, String name, String address, String phoneNumber,
			String mail, String accountNumber, Role role) {
		this.userID = userID;
		this.userName = userName;
		this.userPassword = userPassword;
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.mail = mail;
		this.accountNumber = accountNumber;
		this.role = role;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Account [userID=" + userID + ", userName=" + userName + ", userPassword=" + userPassword + ", name="
				+ name + ", address=" + address + ", phoneNumber=" + phoneNumber + ", mail=" + mail + ", accountNumber="
				+ accountNumber + ", role=" + role + "]";
	}

	
}
