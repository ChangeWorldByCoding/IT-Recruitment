package com.gmg.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gmg.domain.Comment;
import com.gmg.domain.Dirc;
import com.gmg.domain.Job;
import com.gmg.domain.Page;
import com.gmg.service.CommentService;
import com.gmg.service.DircService;
import com.gmg.service.JobService;

@Controller
public class JobAction {
	@Resource(name = JobService.SERVER_NAME)
	private JobService js;
	@Resource(name = DircService.SERVER_NAME)
	private DircService ds;
	@Resource(name = CommentService.SERVER_NAME)
	private CommentService cs;

	@RequestMapping("jobAdd.do")
	public String addJob(@ModelAttribute("job") Job job,
			@RequestParam("logo") MultipartFile logo, HttpServletRequest request)
			throws IllegalStateException, IOException {
		String myFile = logo.getOriginalFilename();
		String upload = request.getSession().getServletContext()
				.getRealPath("upload");
		File file = new File(upload, myFile);
		logo.transferTo(file);
		job.setImg(myFile);
		int adminId_ = (Integer) request.getSession().getAttribute("adminId");
		job.setAdminId(adminId_);
		js.insert(job);
		List<Job> adminJobList = js.getByAdminid(adminId_, 1);
		request.setAttribute("adminDisplayJobList", adminJobList);
		return "job/JobManagement";
	}

	@RequestMapping("getJobs.do")
	public String getJobs(HttpServletRequest request) {
		String pageindex_ = request.getParameter("pageindex");
		String pagenum_ = request.getParameter("pagenum");
		int pageindex = Integer.parseInt(pageindex_);
		int pagenum = Integer.parseInt(pagenum_);
		Page page = new Page(pageindex, pagenum);
		List<Job> listJob = js.getJobs(page);
		List<Dirc> dircList = ds.getByDtype("工作性质");
		request.setAttribute("pageindex", pageindex);
		request.getSession().setAttribute("dircList", dircList);
		request.setAttribute("listJob", listJob);
		return "job/job";
	}

	@RequestMapping("showJob.do")
	public String showJob(HttpServletRequest request) {
		String id_ = request.getParameter("id");
		Job job = js.getById(id_);
		List<Comment> commentList = cs.getComments(id_);
		request.getSession().setAttribute("commentList", commentList);
		request.getSession().setAttribute("job_", job);
		return "job/JobDetail";
	}

	@RequestMapping("showJobsByJobname.do")
	public String showJobsByJobname(HttpServletRequest request) {
		String pageindex = request.getParameter("pageindex");
		String pagenum = request.getParameter("pagenum");
		String name = request.getParameter("name");
		List<Dirc> dircList = ds.getByDtype("工作性质");
		List<Job> listJob = js.getJobsByJobname(name, pageindex, pagenum);
		request.setAttribute("listJobByName", listJob);
		request.setAttribute("name", name);
		request.getSession().setAttribute("dircList", dircList);
		return "job/job";
	}

	// 按jobProp查询
	@RequestMapping("showJobsByJobprop.do")
	public String showJobsByJobProp(HttpServletRequest request) {
		String jobProp = request.getParameter("jobProp");
		List<Job> listJob = js.getByJobprop(jobProp);
		request.setAttribute("listJob", listJob);
		return "job/job";
	}

	// 按工资区间查询
	@RequestMapping("showJobsBySalary.do")
	public String showJobsBySalary(HttpServletRequest request) {
		String pageindex = request.getParameter("pageindex");
		String pagenum = request.getParameter("pagenum");
		List<Dirc> dircList = ds.getByDtype("工作性质");
		String lowSalary = request.getParameter("lowSalary");
		String topSalary = request.getParameter("topSalary");
		List<Job> listJob = js.getBySalary(lowSalary, topSalary, pageindex,
				pagenum);
		request.setAttribute("listJobBySalary", listJob);
		request.setAttribute("lowSalary", lowSalary);
		request.setAttribute("topSalary", topSalary);
		request.getSession().setAttribute("dircList", dircList);
		return "job/job";
	}

	// 按公司名称查询
	@RequestMapping("showJobsByCompanyname.do")
	public String showJobsByCompanyname(HttpServletRequest request) {
		String pageindex = request.getParameter("pageindex");
		String pagenum = request.getParameter("pagenum");
		List<Dirc> dircList = ds.getByDtype("工作性质");
		String companyName = request.getParameter("companyName");
		List<Job> listJob = js.getJobsByCompanyName(companyName, pageindex,
				pagenum);
		request.setAttribute("listJobByCname", listJob);
		request.setAttribute("companyName", companyName);
		request.getSession().setAttribute("dircList", dircList);
		return "job/job";
	}

	// 热门职位查询
	@RequestMapping("getHeatJobs.do")
	public String getHeatJobs(HttpServletRequest request) {
		String pageindex = request.getParameter("pageindex");
		String pagenum = request.getParameter("pagenum");
		int pageindex_ = Integer.parseInt(pageindex);
		int pagenum_ = Integer.parseInt(pagenum);
		List<Job> heatJobs = js.getHeatJobs(pageindex_, pagenum_);
		request.setAttribute("heatJobs", heatJobs);
		List<Job> earlyJobs = js.getEarlyJobs(1, 5);
		request.setAttribute("earlyJobs", earlyJobs);
		request.setAttribute("pageindex", pageindex);
		return "index";
	}

	// 最新职位查询
	@RequestMapping("getEarlyJobs.do")
	public String getEarlyJobs(HttpServletRequest request) {
		String pageindex = request.getParameter("pageindex");
		String pagenum = request.getParameter("pagenum");
		int pageindex_ = Integer.parseInt(pageindex);
		int pagenum_ = Integer.parseInt(pagenum);
		List<Job> earlyJobs = js.getEarlyJobs(pageindex_, pagenum_);
		List<Job> heatJobs = js.getHeatJobs(1, 5);
		request.setAttribute("heatJobs", heatJobs);
		request.setAttribute("earlyJobs", earlyJobs);
		request.setAttribute("pageindex", pageindex);
		return "index";
	}

	// 最新/热门职位查询
	@RequestMapping("getEarlyHeatJobs.do")
	public String getEarlyHeatJobs(HttpServletRequest request) {
		String pageindex = request.getParameter("pageindex");
		String pagenum = request.getParameter("pagenum");
		int pageindex_ = Integer.parseInt(pageindex);
		int pagenum_ = Integer.parseInt(pagenum);
		List<Job> earlyJobs = js.getEarlyJobs(pageindex_, pagenum_);
		request.setAttribute("earlyJobs", earlyJobs);
		List<Job> heatJobs = js.getHeatJobs(pageindex_, pagenum_);
		request.setAttribute("heatJobs", heatJobs);
		request.setAttribute("pageindex", pageindex);
		return "index";
	}

	@RequestMapping("adminDisplayJob.do")
	public String adminDisplayJob(HttpServletRequest request) {
		int adminId = (Integer) request.getSession().getAttribute("adminId");
		List<Job> adminJobList = js.getByAdminid(adminId, 1);
		request.setAttribute("adminDisplayJobList", adminJobList);
		return "job/adminShowJob";
	}

	@RequestMapping("adminNoDisplayJob.do")
	public String adminNoDisplayJob(HttpServletRequest request) {
		int adminId = (Integer) request.getSession().getAttribute("adminId");
		List<Job> adminJobList = js.getByAdminid(adminId, 0);
		request.setAttribute("adminNoneJobList", adminJobList);
		return "job/adminNoneJob";
	}

	@RequestMapping("adminJobDelete.do")
	public String deleAdminJobs(HttpServletRequest request) {
		String id = request.getParameter("id");
		int id_ = Integer.parseInt(id);
		js.deleteJobById(id_);
		int adminId = (Integer) request.getSession().getAttribute("adminId");
		List<Job> adminJobList = js.getByAdminid(adminId, 1);
		request.setAttribute("adminDisplayJobList", adminJobList);
		return "job/adminShowJob";
	}

	public JobService getJs() {
		return js;
	}

	public void setJs(JobService js) {
		this.js = js;
	}

	public DircService getDs() {
		return ds;
	}

	public void setDs(DircService ds) {
		this.ds = ds;
	}

	public CommentService getCs() {
		return cs;
	}

	public void setCs(CommentService cs) {
		this.cs = cs;
	}

}
