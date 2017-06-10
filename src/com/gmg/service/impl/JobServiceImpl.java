package com.gmg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.JobDao;
import com.gmg.domain.Job;
import com.gmg.domain.Page;
import com.gmg.service.JobService;

@Service(value = JobService.SERVER_NAME)
public class JobServiceImpl implements JobService {
	@Resource(name = JobDao.SERVER_NAME)
	private JobDao jd;

	@Override
	public void insert(Job job) {
		jd.insert(job);
	}

	@Override
	public List<Job> getJobs(Page page) {
		return jd.getJobs(page);
	}

	@Override
	public Job getById(String id) {
		int id_ = Integer.parseInt(id);
		return jd.getById(id_);
	}

	@Override
	public List<Job> getHeatJobs(int pageindex, int pagenum) {
		return jd.getHeatJobs((pageindex - 1) * pagenum, pagenum);
	}

	@Override
	public List<Job> getEarlyJobs(int pageindex, int pagenum) {
		return jd.getEarlyJobs((pageindex - 1) * pagenum, pagenum);
	}

	@Override
	public List<Job> getJobsByJobname(String name, String pageindex,
			String pagenum) {
		int pageindex_ = Integer.parseInt(pageindex);
		int pagenum_ = Integer.parseInt(pagenum);
		return jd.getJobsByJobname(name, (pageindex_ - 1) * pagenum_, pagenum_);
	}

	@Override
	public List<Job> getByJobprop(String jobProp) {
		return jd.getByJobprop(jobProp);
	}

	@Override
	public List<Job> getBySalary(String lowSalary, String topSalary,
			String pageindex, String pagenum) {
		int lowSalary_ = Integer.parseInt(lowSalary);
		int topSalary_ = Integer.parseInt(topSalary);
		int pageindex_ = Integer.parseInt(pageindex);
		int pagenum_ = Integer.parseInt(pagenum);
		return jd.getBySalary(lowSalary_, topSalary_, (pageindex_ - 1)
				* pagenum_, pagenum_);
	}

	@Override
	public List<Job> getJobsByCompanyName(String companyName, String pageindex,
			String pagenum) {
		int pageindex_ = Integer.parseInt(pageindex);
		int pagenum_ = Integer.parseInt(pagenum);
		return jd.getJobsByCompanyName(companyName,
				(pageindex_ - 1) * pagenum_, pagenum_);
	}

	@Override
	public List<Job> getByAdminid(int adminId, int state) {

		return jd.getByAdminid(adminId, state);
	}

	@Override
	public void deleteJobById(int id) {
		jd.deleteJobById(id);

	}

	public JobDao getJd() {
		return jd;
	}

	public void setJd(JobDao jd) {
		this.jd = jd;
	}

}
