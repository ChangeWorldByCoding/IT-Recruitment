package com.gmg.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gmg.dao.JobDao;
import com.gmg.domain.Job;
import com.gmg.domain.Page;
import com.gmg.mapper.JobMapper;
import com.gmg.util.ConnUtil;

@Repository(value = JobDao.SERVER_NAME)
public class JobDaoImpl implements JobDao {

	@Override
	public void insert(Job job) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		jm.insert(job);
	}

	@Override
	public List<Job> getJobs(Page page) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getJobs(page);
	}

	@Override
	public Job getById(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getById(id);
	}

	@Override
	public List<Job> getHeatJobs(int pageindex, int pagenum) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getHeatJobs(pageindex, pagenum);
	}

	@Override
	public List<Job> getEarlyJobs(int pageindex, int pagenum) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getEarlyJobs(pageindex, pagenum);
	}

	@Override
	public List<Job> getJobsByJobname(String name, int pageindex, int pagenum) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getJobsByJobname(name, pageindex, pagenum);
	}

	@Override
	public List<Job> getByJobprop(String jobProp) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getByJobprop(jobProp);
	}

	@Override
	public List<Job> getBySalary(int lowSalary, int topSalary, int pageindex,
			int pagenum) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getBySalary(lowSalary, topSalary, pageindex, pagenum);
	}

	@Override
	public List<Job> getJobsByCompanyName(String companyName, int pageindex,
			int pagenum) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getJobsByCompanyName(companyName, pageindex, pagenum);
	}

	@Override
	public List<Job> getByAdminid(int adminId) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
		return jm.getByAdminid(adminId);
	}

	@Override
	public void deleteJobById(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		JobMapper jm = session.getMapper(JobMapper.class);
	    jm.deleteJobById(id);
		
	}

}
