package com.gmg.domain;

public class Admin {
	private int id;
	private String email;
	private String tel;
	private String userName;
	private String passWord;

	public Admin() {
	}
   
	public Admin(String userName, String passWord) {
		this.userName = userName;
		this.passWord = passWord;
	}

	public Admin(String email, String userName, String passWord) {
		this.email = email;
		this.userName = userName;
		this.passWord = passWord;
	}
	

	public Admin(String email, String tel, String userName, String passWord) {
		this.email = email;
		this.tel = tel;
		this.userName = userName;
		this.passWord = passWord;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
