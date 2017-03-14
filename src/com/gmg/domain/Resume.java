package com.gmg.domain;

public class Resume {
	private int id;
	private String fileName;
    private String userName;
    private int uid;
	private int num;
    private int jobId;
	public Resume() {
	}
    
	public Resume(String fileName, String userName, int uid, int jobId) {
		this.fileName = fileName;
		this.userName = userName;
		this.uid = uid;
		this.jobId = jobId;
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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
    public int getJobId() {
		return jobId;
	}
   public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	
	
  
}
