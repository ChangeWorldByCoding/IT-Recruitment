package com.gmg.dao;

import java.util.List;

import com.gmg.domain.Resume;

public interface ResumeDao {
	public static final String SERVER_NAME = "com.gmg.dao.impl.ResumeDaoImpl";

	public void insert(Resume resume);

	public int getCount(int id);

	public int getCount0(int id);

	public int getCount1(int id);

	public int getCount2(int id);

	public int getCount3(int id);

	// 所有简历
	public List<Resume> getResumes(int id);

	// 待筛选简历
	public List<Resume> getResumes0(int id);

	// 待沟通简历
	public List<Resume> getResumes1(int id);

	// 已安排面试简历
	public List<Resume> getResumes2(int id);

	// 不合适简历
	public List<Resume> getResumes3(int id);

	public void deleteByfileName(String fileName);

	public Resume findByuserName(String userName);
}
