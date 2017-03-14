package com.gmg.domain;

public class User {
	private int id;
	private String userName;
	private String passWord;
	private String tel;
	private String email;
	private String gender;
	private String education;
	private String workyear;
	private String state;
	private String city;
	private String type;
	private String expectPosition;
	private String salary;

	public User(String userName, String passWord) {
		this.userName = userName;
		this.passWord = passWord;
	}

	public User(String userName, String passWord, String tel, String email,
			String gender, String education, String workyear, String state,
			String city, String type, String expectPosition, String salary) {
		this.userName = userName;
		this.passWord = passWord;
		this.tel = tel;
		this.email = email;
		this.gender = gender;
		this.education = education;
		this.workyear = workyear;
		this.state = state;
		this.city = city;
		this.type = type;
		this.expectPosition = expectPosition;
		this.salary = salary;
	}

	public User() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getWorkyear() {
		return workyear;
	}

	public void setWorkyear(String workyear) {
		this.workyear = workyear;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getExpectPosition() {
		return expectPosition;
	}

	public void setExpectPosition(String expectPosition) {
		this.expectPosition = expectPosition;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

}
