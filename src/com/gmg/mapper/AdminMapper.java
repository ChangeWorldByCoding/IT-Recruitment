package com.gmg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.gmg.domain.Admin;
import com.gmg.domain.User;

public interface AdminMapper {
	  @Insert("insert admin(email,tel,userName,passWord) values(#{email},#{tel},#{userName},#{passWord})")
	  public void insert(Admin admin);
	  @Select("select count(*) from admin where passWord=#{passWord} and (email=#{email} or userName=#{userName})")
	  public int checkUser(Admin admin);
	  //管理员修改密码
	  @Update("update admin set passWord=#{passWord} where userName=#{userName}")
	  public void update(Admin admin);
	  //根据用户名查询用户
	  @Select("select id from admin where userName=#{userName}")
	  public int findByUsername(String userName);
	  @Select("select * from admin")
	  public List<Admin> getAdmins();
}
