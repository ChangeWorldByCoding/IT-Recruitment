package com.gmg.test;

import java.util.List;

import org.junit.Test;

import com.gmg.dao.CommentDao;
import com.gmg.dao.JobDao;
import com.gmg.dao.impl.CommentDaoImpl;
import com.gmg.dao.impl.JobDaoImpl;
import com.gmg.domain.Admin;
import com.gmg.domain.Comment;
import com.gmg.domain.Job;
import com.gmg.domain.User;
import com.gmg.service.AdminService;
import com.gmg.service.JobService;
import com.gmg.service.UserService;
import com.gmg.service.impl.JobServiceImpl;
import com.gmg.util.ApplicationUtil;

public class AdminTest {
	@Test
	public void check(){
		JobService js= (JobService) ApplicationUtil.getBean(JobService.SERVER_NAME);
		
		
	}
}
