package com.gmg.dao;

import java.util.List;

import com.gmg.domain.Admin;

public interface AdminDao {
   public static final String SERVER_NAME="com.gmg.dao.impl.AdminDaoImpl";
   public void insert(Admin admin);
   public int checkAdmin(Admin admin);
   public void update(Admin admin);
   public int findByUsername(String userName);
   public List<Admin> getAdmins();
}
