package com.gmg.dao;

import com.gmg.domain.PResume;

public interface PResumeDao {
	public static final String SERVER_NAME = "com.gmg.dao.impl.PResumeDaoImpl";

	public void insert(PResume presume);

	public void deleteByUid(int uid);

	public PResume findByuserName(String userName);
}
