package com.gmg.service;

import com.gmg.domain.PResume;

public interface PResumeService {
	public static final String SERVER_NAME = "com.gmg.service.impl.PResumeServiceImpl";

	public void insert(PResume resume);

	public void deleteByUid(int uid);

	public PResume findByuserName(String userName);
}
