package com.gmg.domain;

import java.util.Date;

public class Job {
	private int id;
	private String companyName;
	private String jobName;
	private String jobType;
	private String jobRegion;
	private String education;
	private String jobExpr;
	private String jobIntr;
	private String name;
	private String phone;
	private String email;
	private String jobWelfare;
	private String img;
	private String main;
	private String address;
	private String jobProp;
	private int salary;
	private Date publishDate;
    private int adminId;
	public Job() {
	}
     public Job(String companyName, String jobName, String jobType,
			String jobRegion, String education, String jobExpr, String jobIntr,
			String name, String phone, String email, String jobWelfare,
			String img, String main, String address, String jobProp,
			int salary, int adminId) {
		this.companyName = companyName;
		this.jobName = jobName;
		this.jobType = jobType;
		this.jobRegion = jobRegion;
		this.education = education;
		this.jobExpr = jobExpr;
		this.jobIntr = jobIntr;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.jobWelfare = jobWelfare;
		this.img = img;
		this.main = main;
		this.address = address;
		this.jobProp = jobProp;
		this.salary = salary;
		this.adminId = adminId;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJobRegion() {
		return jobRegion;
	}

	public void setJobRegion(String jobRegion) {
		this.jobRegion = jobRegion;
	}

	public String getJobIntr() {
		return jobIntr;
	}

	public void setJobIntr(String jobIntr) {
		this.jobIntr = jobIntr;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJobWelfare() {
		return jobWelfare;
	}

	public void setJobWelfare(String jobWelfare) {
		this.jobWelfare = jobWelfare;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getMain() {
		return main;
	}

	public void setMain(String main) {
		this.main = main;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getJobExpr() {
		return jobExpr;
	}

	public void setJobExpr(String jobExpr) {
		this.jobExpr = jobExpr;
	}

	public String getJobProp() {
		return jobProp;
	}

	public void setJobProp(String jobProp) {
		this.jobProp = jobProp;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	

}
