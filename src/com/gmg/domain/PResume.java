package com.gmg.domain;

public class PResume {
	private int id;
	private String fileName;
	private String userName;
	private int uid;

	public PResume() {
	}

	public PResume(String fileName, String userName, int uid) {
		this.fileName = fileName;
		this.userName = userName;
		this.uid = uid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

}
