package com.gmg.dao;

import java.util.List;

import com.gmg.domain.User;

public interface UserDao {
	public static final String SERVER_NAME = "com.gmg.dao.impl.UserDaoImpl";

	public void insert(User user);

	public int checkUser(User user);

	public User findByUsername(String username);

	public void update(User user);

	public List<User> getUsers();

	public void updateOnlineResume(User user);
}
