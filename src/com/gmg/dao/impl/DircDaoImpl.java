package com.gmg.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gmg.dao.DircDao;
import com.gmg.domain.Dirc;
import com.gmg.mapper.DircMapper;
import com.gmg.util.ConnUtil;
@Repository(value=DircDao.SERVER_NAME)
public class DircDaoImpl implements DircDao{

	@Override
	public List<Dirc> getByDtype(String dtype) {
		SqlSession session=ConnUtil.getSf().openSession();
		DircMapper dm=session.getMapper(DircMapper.class);
	    return 	dm.getByDtype(dtype);
	}

	@Override
	public String getById(int id) {
		SqlSession session=ConnUtil.getSf().openSession();
		DircMapper dm=session.getMapper(DircMapper.class);
	    return 	dm.getById(id);
	}
   
}
