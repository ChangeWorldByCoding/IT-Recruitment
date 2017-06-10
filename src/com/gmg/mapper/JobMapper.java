package com.gmg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.gmg.domain.Job;
import com.gmg.domain.Page;

public interface JobMapper {
	@Insert("insert into job(companyName,jobName,jobType,jobRegion,education,jobExpr,jobIntr,Name,phone,email,jobWelfare,img,main,address,salary,jobProp,state,adminId) values(#{companyName},#{jobName},#{jobType},#{jobRegion},#{education},#{jobExpr},#{jobIntr},#{name},#{phone},#{email},#{jobWelfare},#{img},#{main},#{address},#{salary},#{jobProp},1,#{adminId})")
	public void insert(Job job);

	@Select("select * from job limit #{pageindex},#{pagenum}")
	public List<Job> getJobs(Page page);

	// 按id查询
	@Select("select * from job where id=#{id}")
	public Job getById(int id);

	// 按jobProp查询
	@Select("select * from job where jobProp=#{jobProp}")
	public List<Job> getByJobprop(String jobProp);

	// 按adminId查询
	@Select("select * from job where adminId=#{adminId} and state=#{state}")
	public List<Job> getByAdminid(@Param("adminId") int adminId,
			@Param("state") int state);

	// 按工资区间查询
	@Select("select * from job where salary between #{lowSalary} and #{topSalary} limit #{pageindex},#{pagenum}")
	public List<Job> getBySalary(@Param("lowSalary") int lowSalary,
			@Param("topSalary") int topSalary,
			@Param("pageindex") int pageindex, @Param("pagenum") int pagenum);

	@Select("select * from job where publishDate<'2017-03-13 10:20:45' limit #{pageindex},#{pagenum}")
	// 查询热门职位
	public List<Job> getHeatJobs(@Param("pageindex") int pageindex,
			@Param("pagenum") int pagenum);

	@Select("select * from job where publishDate>'2017-03-13 10:20:45' limit #{pageindex},#{pagenum}")
	// 查询最新职位
	public List<Job> getEarlyJobs(@Param("pageindex") int pageindex,
			@Param("pagenum") int pagenum);

	// 按职位类型查询
	@Select("select * from job where jobName LIKE CONCAT(CONCAT('%', #{name}), '%') limit #{pageindex},#{pagenum}")
	public List<Job> getJobsByJobname(@Param("name") String name,
			@Param("pageindex") int pageindex, @Param("pagenum") int pagenum);

	// 按照公司名称查询
	@Select("select * from job where companyName=#{companyName} limit #{pageindex},#{pagenum}")
	public List<Job> getJobsByCompanyName(
			@Param("companyName") String companyName,
			@Param("pageindex") int pageindex, @Param("pagenum") int pagenum);

	// 企业用户删除职位
	@Delete("update job set state=0 where id=#{id}")
	public void deleteJobById(int id);

}
