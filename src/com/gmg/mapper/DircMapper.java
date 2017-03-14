package com.gmg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.gmg.domain.Dirc;

public interface DircMapper {
	@Select("select * from dirc where dtype=#{dtype}")
   public List<Dirc> getByDtype(String dtype);
	@Select("select name from dirc where id=#{id}")
	public String getById(int id);
}
