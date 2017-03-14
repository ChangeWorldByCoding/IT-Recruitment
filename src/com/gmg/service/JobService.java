package com.gmg.service;

import java.util.List;

import com.gmg.domain.Job;
import com.gmg.domain.Page;

public interface JobService {
	public static final String SERVER_NAME = "com.gmg.service.impl.JobServiceImpl";

	public void insert(Job job);

	public List<Job> getJobs(Page page);

	public Job getById(String id_);

	// 查询热门职位
	public List<Job> getHeatJobs(int pageindex, int pagenum);

	// 查询最新职位
	public List<Job> getEarlyJobs(int pageindex, int pagenum);

	// 按工作名模糊查询
	public List<Job> getJobsByJobname(String name, String pageindex,
			String pagenum);

	// 按jobProp查询
	public List<Job> getByJobprop(String jobProp);

	// 按工资区间查询
	public List<Job> getBySalary(String lowSalary, String topSalary,
			String pageindex, String pagenum);

	// 按照公司名称查询
	public List<Job> getJobsByCompanyName(String companyName, String pageindex,
			String pagenum);
	
	public List<Job> getByAdminid(int adminId);
	
	public void deleteJobById(int id);
	
}
