package com.gmg.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.gmg.dao.AdminDao;
import com.gmg.dao.UserDao;
import com.gmg.domain.Admin;
import com.gmg.mapper.AdminMapper;
import com.gmg.util.ConnUtil;
@Repository(value=AdminDao.SERVER_NAME)
public class AdminDaoImpl implements AdminDao{
     SqlSessionFactory sf=ConnUtil.getSf();
	@Override
	public void insert(Admin admin) {
		SqlSession session=sf.openSession();
		AdminMapper am=session.getMapper(AdminMapper.class);
		am.insert(admin);
		session.commit();
	}

	@Override
	public int checkAdmin(Admin admin) {
		SqlSession session=sf.openSession();
		AdminMapper am=session.getMapper(AdminMapper.class);
		return am.checkUser(admin);
		
	}

	@Override
	public void update(Admin admin) {
		SqlSession session=sf.openSession();
		AdminMapper am=session.getMapper(AdminMapper.class);
		am.update(admin);
		session.commit();
		
	}

	@Override
	public int findByUsername(String userName) {
		SqlSession session=sf.openSession();
		AdminMapper am=session.getMapper(AdminMapper.class);
		return am.findByUsername(userName);
	}

	@Override
	public List<Admin> getAdmins() {
		SqlSession session=sf.openSession();
		AdminMapper am=session.getMapper(AdminMapper.class);
		return am.getAdmins();
	}

}
