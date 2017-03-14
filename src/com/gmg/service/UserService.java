package com.gmg.service;

import java.util.List;

import com.gmg.domain.Job;
import com.gmg.domain.User;

public interface UserService {
	public static final String SERVER_NAME = "com.gmg.service.impl.UserServiceImpl";

	public void insert(User user);

	public boolean checkUser(User user);

	public User findByUsername(String username);

	public void update(User user);

	public List<User> getUsers();

	public void updateOnlineResume(User user);
}
