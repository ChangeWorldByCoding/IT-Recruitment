package com.gmg.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.gmg.dao.UserDao;
import com.gmg.domain.User;
import com.gmg.mapper.UserMapper;
import com.gmg.util.ConnUtil;

@Repository(value = UserDao.SERVER_NAME)
public class UserDaoImpl implements UserDao {
	SqlSessionFactory sf = ConnUtil.getSf();

	@Override
	public void insert(User user) {
		SqlSession session = sf.openSession();
		UserMapper us = session.getMapper(UserMapper.class);
		us.insert(user);
		session.commit();
	}

	@Override
	public int checkUser(User user) {
		SqlSession session = sf.openSession();
		UserMapper us = session.getMapper(UserMapper.class);
		return us.checkUser(user);

	}

	@Override
	public User findByUsername(String username) {
		SqlSession session = sf.openSession();
		UserMapper us = session.getMapper(UserMapper.class);
		return us.findByUser(username);
	}

	@Override
	public void update(User user) {
		SqlSession session = sf.openSession();
		UserMapper us = session.getMapper(UserMapper.class);
		us.update(user);
		session.commit();

	}

	@Override
	public List<User> getUsers() {
		SqlSession session = sf.openSession(true);
		UserMapper us = session.getMapper(UserMapper.class);
		return us.getUsers();
	}

	@Override
	public void updateOnlineResume(User user) {
		SqlSession session = sf.openSession(true);
		UserMapper us = session.getMapper(UserMapper.class);
		us.updateOnlineResume(user);

	}

}
