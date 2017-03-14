package com.gmg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.AdminDao;
import com.gmg.dao.UserDao;
import com.gmg.domain.Admin;
import com.gmg.service.AdminService;
@Service(value=AdminService.SERVER_NAME)
public class AdminServiceImpl implements AdminService{
    @Resource(name=AdminDao.SERVER_NAME)
    private AdminDao ad;
	@Override
	public void insert(Admin admin) {
		ad.insert(admin);
	}

	@Override
	public boolean checkAdmin(Admin admin) {
		int num=ad.checkAdmin(admin);
		if(num==1){
			return true;
		}else{
			return false;
		}
	}
	@Override
	public void update(Admin admin) {
        ad.update(admin);		
	}
	@Override
	public int findByUsername(String userName) {
		return ad.findByUsername(userName);
	}
	@Override
	public List<Admin> getAdmins() {
		return ad.getAdmins();
	}
	public AdminDao getAd() {
		return ad;
	}

	public void setAd(AdminDao ad) {
		this.ad = ad;
	}

	

	



   
}
