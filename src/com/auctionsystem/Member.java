package com.auctionsystem;

public class Member {
	private String firstName , lastName , userName , phoneNumber , email , userType , password;

	
	
	public Member(String firstName, String lastName, String userName, String phoneNumber, String email, String userType,
			String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.userType = userType;
		this.password = password;
//		System.out.println(this.phoneNumber);
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
