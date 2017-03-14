package com.gmg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmg.domain.Resume;

public interface ResumeMapper {
	@Insert("insert into resume(fileName,userName,uid,jobId) values(#{fileName},#{userName},#{uid},#{jobId})")
	public void insert(Resume resume);

	@Delete("delete from resume where fileName=#{fileName}")
	public void deleteByfileName(@Param("fileName") String fileName);

	// 根据用户名查询
	@Select("select * from resume where userName=#{userName}")
	public Resume findByuserName(@Param("userName") String userName);

	// 简历总数
	@Select("SELECT count(*) from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and a.id=#{id}")
	public int getCount(int id);

	// 待筛选简历总数
	@Select("SELECT count(*) from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and a.id=#{id} and r.state=0")
	public int getCount0(int id);

	// 待沟通简历总数
	@Select("SELECT count(*) from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and a.id=#{id} and r.state=1")
	public int getCount1(int id);

	// 已安排面试简历总数
	@Select("SELECT count(*) from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and a.id=#{id} and r.state=2")
	public int getCount2(int id);

	// 不合适简历总数
	@Select("SELECT count(*) from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and a.id=#{id} and r.state=3")
	public int getCount3(int id);

	// 查看所有简历
	@Select("SELECT r.* from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and a.id=#{id}")
	public List<Resume> getResumes(int id);

	// 待筛选简历
	@Select("SELECT r.* from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and r.state=0 and a.id=#{id}")
	public List<Resume> getResumes0(int id);

	// 待沟通简历
	@Select("SELECT r.* from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and r.state=1 and a.id=#{id}")
	public List<Resume> getResumes1(int id);

	// 已安排面试简历
	@Select("SELECT r.* from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and r.state=2 and a.id=#{id}")
	public List<Resume> getResumes2(int id);

	// 不合适简历
	@Select("SELECT r.* from resume r,job j,admin a where r.jobId=j.id and j.adminId=a.id and r.state=3 and a.id=#{id}")
	public List<Resume> getResumes3(int id);

}
