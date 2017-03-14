package com.gmg.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmg.domain.Dirc;
import com.gmg.service.DircService;

@Controller
public class DircAction {
	@Resource(name=DircService.SERVER_NAME)
	private DircService ds;
	@RequestMapping("addJob.do")
   public String getByDtype(HttpServletRequest request){
		List<Dirc> jobTypes=ds.getByDtype("职位类别");
		List<Dirc> educations=ds.getByDtype("学历要求");
		List<Dirc> jobExprs=ds.getByDtype("工作经验");
		List<Dirc> jobProps=ds.getByDtype("工作性质");
		request.getSession().setAttribute("jobTypes", jobTypes);
		request.getSession().setAttribute("educations", educations);
		request.getSession().setAttribute("jobExprs", jobExprs);
		request.getSession().setAttribute("jobProps", jobProps);
	   return "admin/addJob";
   }
	public DircService getDs() {
		return ds;
	}
	public void setDs(DircService ds) {
		this.ds = ds;
	} 
	
}
