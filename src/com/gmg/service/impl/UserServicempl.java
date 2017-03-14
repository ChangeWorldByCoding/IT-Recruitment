package com.gmg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.UserDao;
import com.gmg.domain.User;
import com.gmg.service.UserService;

@Service(value = UserService.SERVER_NAME)
public class UserServicempl implements UserService {
	@Resource(name = UserDao.SERVER_NAME)
	private UserDao ud;

	@Override
	public void insert(User user) {
		ud.insert(user);
	}

	@Override
	public boolean checkUser(User user) {
		int num = ud.checkUser(user);
		if (num == 1) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public User findByUsername(String username) {

		return ud.findByUsername(username);
	}

	@Override
	public void update(User user) {
		ud.update(user);

	}

	@Override
	public List<User> getUsers() {
		return ud.getUsers();
	}

	@Override
	public void updateOnlineResume(User user) {
		ud.updateOnlineResume(user);

	}

	public UserDao getUd() {
		return ud;
	}

	public void setUd(UserDao ud) {
		this.ud = ud;
	}

}
