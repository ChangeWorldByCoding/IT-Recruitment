package com.gmg.service;

import java.util.List;

import com.gmg.domain.Dirc;

public interface DircService {
	public static final String SERVER_NAME="com.gmg.service.impl.DircServiceImpl";
	public List<Dirc> getByDtype(String dtype);
	public String getById(int id);
	
}
