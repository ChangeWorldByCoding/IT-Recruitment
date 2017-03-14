package com.gmg.test;

import org.junit.Test;

import com.gmg.dao.DircDao;
import com.gmg.dao.JobDao;
import com.gmg.dao.impl.DircDaoImpl;
import com.gmg.dao.impl.JobDaoImpl;
import com.gmg.domain.User;
import com.gmg.service.UserService;
import com.gmg.util.ApplicationUtil;

public class UserTest {
	JobDao jd = new JobDaoImpl();
	DircDao dd = new DircDaoImpl();

	@Test
	public void insert() {

	}

	@Test
	public void getUsers() {

	}

	@Test
	public void updateUsers() {
		UserService us = (UserService) ApplicationUtil
				.getBean(UserService.SERVER_NAME);
		User user = new User();
		user.setUserName("gmg");
		user.setPassWord("456");
		us.update(user);
	}
}
