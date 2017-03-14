package com.gmg.service;

import java.util.List;

import com.gmg.domain.Admin;

public interface AdminService {
	   public static final String SERVER_NAME="com.gmg.service.impl.AdminServiceImpl";
	   public void insert(Admin admin);
	   public boolean checkAdmin(Admin admin);
	   public void update(Admin admin);
	   public int findByUsername(String userName);
	   public List<Admin> getAdmins();
}
