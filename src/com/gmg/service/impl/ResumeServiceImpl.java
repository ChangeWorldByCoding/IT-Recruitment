package com.gmg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.ResumeDao;
import com.gmg.domain.Resume;
import com.gmg.service.ResumeService;

@Service(value = ResumeService.SERVER_NAME)
public class ResumeServiceImpl implements ResumeService {
	@Resource(name = ResumeDao.SERVER_NAME)
	private ResumeDao rd;

	@Override
	public void insert(Resume resume) {
		rd.insert(resume);
	}

	@Override
	public int getCount(int id) {
		// TODO Auto-generated method stub
		return rd.getCount(id);
	}

	@Override
	public int getCount0(int id) {
		return rd.getCount0(id);
	}

	@Override
	public int getCount1(int id) {
		return rd.getCount1(id);
	}

	@Override
	public int getCount2(int id) {
		return rd.getCount2(id);
	}

	@Override
	public int getCount3(int id) {
		return rd.getCount3(id);
	}

	@Override
	public List<Resume> getResumes(int id) {

		return rd.getResumes(id);
	}

	@Override
	public List<Resume> getResumes0(int id) {
		return rd.getResumes0(id);
	}

	@Override
	public List<Resume> getResumes1(int id) {
		return rd.getResumes1(id);
	}

	@Override
	public List<Resume> getResumes2(int id) {
		return rd.getResumes2(id);
	}

	@Override
	public List<Resume> getResumes3(int id) {
		return rd.getResumes3(id);
	}

	@Override
	public void deleteByfileName(String fileName) {
		rd.deleteByfileName(fileName);
	}

	@Override
	public Resume findByuserName(String userName) {
		return rd.findByuserName(userName);
	}

	public ResumeDao getRd() {
		return rd;
	}

	public void setRd(ResumeDao rd) {
		this.rd = rd;
	}

}
