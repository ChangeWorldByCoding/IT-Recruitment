package com.gmg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.DircDao;
import com.gmg.domain.Dirc;
import com.gmg.service.DircService;
@Service(value=DircService.SERVER_NAME)
public class DircServiceImpl implements DircService{
   @Resource(name=DircDao.SERVER_NAME)
   private DircDao dd;
	@Override
	public List<Dirc> getByDtype(String dtype) {
		
		return dd.getByDtype(dtype);
	}
	@Override
	public String getById(int id) {
		return dd.getById(id);
	}
  
	public DircDao getDd() {
		return dd;
	}
	public void setDd(DircDao dd) {
		this.dd = dd;
	}

}
