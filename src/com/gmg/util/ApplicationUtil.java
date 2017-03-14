package com.gmg.util;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ApplicationUtil {
   public static Object getBean(String server){
	   BeanFactory bf=new ClassPathXmlApplicationContext("application.xml");
	   return bf.getBean(server);
   }
}
