package com.gmg.domain;

public class Comment {
	private int id;
	private String content;
	private int jobId;

	public Comment(String content, int jobId) {
		this.content = content;
		this.jobId = jobId;
	}

	public Comment() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

}
