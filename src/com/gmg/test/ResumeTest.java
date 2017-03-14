package com.gmg.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.gmg.dao.ResumeDao;
import com.gmg.dao.impl.ResumeDaoImpl;
import com.gmg.domain.Resume;

public class ResumeTest {
   @Test
   public void getCount(){
	ResumeDao rd=new ResumeDaoImpl(); 
	int num=rd.getCount(5);
	System.out.println(num);
   }
}
