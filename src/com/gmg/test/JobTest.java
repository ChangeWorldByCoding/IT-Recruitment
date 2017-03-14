package com.gmg.test;

import java.util.List;

import org.junit.Test;

import com.gmg.dao.JobDao;
import com.gmg.dao.impl.JobDaoImpl;
import com.gmg.domain.Job;
import com.gmg.domain.Page;

public class JobTest {
   @Test
   public void getByJobName(){
	  JobDao jd=new JobDaoImpl();
	  int pageindex=1;
	  int pagenum=5;
	  List<Job> listjob=jd.getBySalary(2, 10, (pageindex-1)*pagenum, pagenum);
	  for(Job l:listjob){
		  System.out.println(l.getId());
	  }
	 
   }
}
