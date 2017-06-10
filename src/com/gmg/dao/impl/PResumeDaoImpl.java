package com.gmg.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gmg.dao.PResumeDao;
import com.gmg.domain.PResume;
import com.gmg.mapper.PResumeMapper;
import com.gmg.util.ConnUtil;

@Repository(value = PResumeDao.SERVER_NAME)
public class PResumeDaoImpl implements PResumeDao {

	@Override
	public void insert(PResume resume) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		PResumeMapper rs = session.getMapper(PResumeMapper.class);
		rs.insert(resume);

	}

	@Override
	public void deleteByUid(int uid) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		PResumeMapper rs = session.getMapper(PResumeMapper.class);
		rs.deleteByUid(uid);

	}

	@Override
	public PResume findByuserName(String userName) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		PResumeMapper rs = session.getMapper(PResumeMapper.class);
		return rs.findByuserName(userName);
	}

}
