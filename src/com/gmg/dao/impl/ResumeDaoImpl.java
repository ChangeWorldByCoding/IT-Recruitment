package com.gmg.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gmg.dao.ResumeDao;
import com.gmg.domain.Resume;
import com.gmg.mapper.ResumeMapper;
import com.gmg.util.ConnUtil;

@Repository(value = ResumeDao.SERVER_NAME)
public class ResumeDaoImpl implements ResumeDao {

	@Override
	public void insert(Resume resume) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		rs.insert(resume);

	}

	@Override
	public int getCount(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getCount(id);
	}

	@Override
	public int getCount0(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getCount0(id);
	}

	@Override
	public int getCount1(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getCount1(id);
	}

	@Override
	public int getCount2(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getCount2(id);
	}

	@Override
	public int getCount3(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getCount3(id);
	}

	@Override
	public List<Resume> getResumes0(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getResumes0(id);
	}

	@Override
	public List<Resume> getResumes1(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getResumes1(id);
	}

	@Override
	public List<Resume> getResumes2(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getResumes2(id);
	}

	@Override
	public List<Resume> getResumes3(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getResumes3(id);
	}

	@Override
	public void deleteByfileName(String fileName) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		rs.deleteByfileName(fileName);

	}

	@Override
	public Resume findByuserName(String userName) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.findByuserName(userName);
	}

	@Override
	public List<Resume> getResumes(int id) {
		SqlSession session = ConnUtil.getSf().openSession(true);
		ResumeMapper rs = session.getMapper(ResumeMapper.class);
		return rs.getResumes(id);
	}

}
