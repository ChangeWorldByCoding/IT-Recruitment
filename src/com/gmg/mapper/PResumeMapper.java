package com.gmg.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.gmg.domain.PResume;

public interface PResumeMapper {
	@Insert("insert into presume(fileName,userName,uid) values(#{fileName},#{userName},#{uid})")
	public void insert(PResume resume);

	@Delete("delete from presume where uid=#{uid}")
	public void deleteByUid(@Param("uid") int uid);

	// 根据用户名查询
	@Select("select * from presume where userName=#{userName}")
	public PResume findByuserName(@Param("userName") String userName);

}
