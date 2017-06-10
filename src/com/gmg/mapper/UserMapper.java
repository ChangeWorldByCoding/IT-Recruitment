package com.gmg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.gmg.domain.User;

public interface UserMapper {
	@Insert("insert user(tel,email,userName,passWord) values(#{tel},#{email},#{userName},#{passWord})")
	public void insert(User user);

	@Select("select count(*) from user where passWord=#{passWord} and userName=#{userName}")
	public int checkUser(User user);

	@Select("select * from user where userName=#{userName}")
	public User findByUser(String username);

	@Update("update user set passWord=#{passWord} where userName=#{userName}")
	public void update(User user);

	@Select("select * from user")
	public List<User> getUsers();

	// 填写在线简历
	@Update("update user set gender=#{gender},education=#{education},workyear=#{workyear},educateSchool=#{educateSchool},state=#{state},city=#{city},type=#{type},expectPosition=#{expectPosition},salary=#{salary} where id=#{id}")
	public void updateOnlineResume(User user);
}
