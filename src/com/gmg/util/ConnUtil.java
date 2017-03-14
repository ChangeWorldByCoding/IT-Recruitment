package com.gmg.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ConnUtil {
	static SqlSessionFactory sf=null;
  public static SqlSessionFactory getSf(){
	  try {
		InputStream is=Resources.getResourceAsStream("conn.xml");
		sf=new SqlSessionFactoryBuilder().build(is);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return sf;
  }
}
