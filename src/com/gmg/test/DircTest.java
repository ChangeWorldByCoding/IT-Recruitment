package com.gmg.test;

import java.util.List;

import org.junit.Test;

import com.gmg.dao.DircDao;
import com.gmg.dao.JobDao;
import com.gmg.dao.impl.DircDaoImpl;
import com.gmg.dao.impl.JobDaoImpl;
import com.gmg.domain.Dirc;
import com.gmg.domain.Job;
import com.gmg.domain.Page;

public class DircTest {
  @Test
  public void getDirc(){
	 JobDao jd=new JobDaoImpl();
	 Job job=jd.getById(1);
	 System.out.println(job.getAddress());
	
  }
		
}
