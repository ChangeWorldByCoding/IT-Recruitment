package com.gmg.dao;

import java.util.List;

import com.gmg.domain.Dirc;

public interface DircDao {
	 public static final String SERVER_NAME="com.gmg.dao.impl.DircDaoImpl";
	 public List<Dirc> getByDtype(String dtype);
	 public String getById(int id);
} 
