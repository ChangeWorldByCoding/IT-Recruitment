package com.gmg.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.PResumeDao;
import com.gmg.domain.PResume;
import com.gmg.service.PResumeService;

@Service(value = PResumeService.SERVER_NAME)
public class PResumeServiceImpl implements PResumeService {
	@Resource(name = PResumeDao.SERVER_NAME)
	private PResumeDao rd;

	@Override
	public void insert(PResume resume) {
		rd.insert(resume);
	}

	@Override
	public void deleteByUid(int uid) {
		rd.deleteByUid(uid);
	}

	@Override
	public PResume findByuserName(String userName) {
		return rd.findByuserName(userName);
	}

	public PResumeDao getRd() {
		return rd;
	}

	public void setRd(PResumeDao rd) {
		this.rd = rd;
	}

}
