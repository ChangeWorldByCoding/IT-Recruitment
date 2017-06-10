package com.gmg.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmg.domain.Comment;
import com.gmg.domain.Resume;
import com.gmg.service.CommentService;
import com.gmg.service.DircService;
import com.gmg.service.JobService;
import com.gmg.service.PResumeService;
import com.gmg.service.ResumeService;

@Controller
public class ResumeAction {
	@Resource(name = PResumeService.SERVER_NAME)
	private PResumeService prs;
	@Resource(name = ResumeService.SERVER_NAME)
	private ResumeService rs;
	@Resource(name = CommentService.SERVER_NAME)
	private CommentService cs;
	@Resource(name = JobService.SERVER_NAME)
	private JobService js;
	@Resource(name = DircService.SERVER_NAME)
	private DircService ds;

	@RequestMapping("deliverResume.do")
	public String deliverResume(HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String uid = request.getParameter("uid"); 
		int uid_ = Integer.parseInt(uid);
		String jobId = request.getParameter("jobId");
		int jobId_ = Integer.parseInt(jobId);
		String filename = request.getParameter("filename");
		Resume resume = new Resume(filename, userName, uid_, jobId_);
		rs.insert(resume);
		List<Comment> commentList = cs.getComments(jobId);
		request.setAttribute("commentList", commentList);
		request.getSession().setAttribute("resume", resume);
		return "job/JobDetail";
	}

	@RequestMapping("getResumes.do")
	// 所有简历
	public String getResumes(HttpServletRequest request) {
		int adminId_ = (Integer) request.getSession().getAttribute("adminId");
		List<Resume> resumeList = rs.getResumes(adminId_);
		int num = rs.getCount(adminId_);
		request.setAttribute("num", num);
		request.setAttribute("resumeList", resumeList);
		return "resume/resumes";
	}

	@RequestMapping("getResumes0.do")
	// 待筛选简历
	public String getResumes0(HttpServletRequest request) {
		int adminId_ = (Integer) request.getSession().getAttribute("adminId");
		List<Resume> resumeList = rs.getResumes(adminId_);
		List<Resume> resumeList0 = rs.getResumes0(adminId_);
		int num = rs.getCount0(adminId_);
		request.setAttribute("num", num);
		request.setAttribute("resumeList0", resumeList0);
		return "resume/resumeNoselect";
	}

	@RequestMapping("getResumes1.do")
	// 待沟通简历
	public String getResumes1(HttpServletRequest request) {
		int adminId_ = (Integer) request.getSession().getAttribute("adminId");
		int num = rs.getCount1(adminId_);
		request.setAttribute("num", num);
		List<Resume> resumeList1 = rs.getResumes1(adminId_);
		request.setAttribute("resumeList1", resumeList1);
		return "resume/resumeNoComm";
	}

	@RequestMapping("getResumes2.do")
	// 已面试简历
	public String getResumes2(HttpServletRequest request) {
		int adminId_ = (Integer) request.getSession().getAttribute("adminId");
		int num = rs.getCount2(adminId_);
		request.setAttribute("num", num);
		List<Resume> resumeList2 = rs.getResumes2(adminId_);
		request.setAttribute("resumeList2", resumeList2);
		return "resume/resumeInterviewed";
	}

	@RequestMapping("getResumes3.do")
	// 不合适简历
	public String getResumes3(HttpServletRequest request) {
		int adminId_ = (Integer) request.getSession().getAttribute("adminId");
		int num = rs.getCount3(adminId_);
		request.setAttribute("num", num);
		List<Resume> resumeList3 = rs.getResumes3(adminId_);
		request.setAttribute("resumeList3", resumeList3);
		return "resume/resumeNosuite";
	}

	public ResumeService getRs() {
		return rs;
	}

	public void setRs(ResumeService rs) {
		this.rs = rs;
	}

	public CommentService getCs() {
		return cs;
	}

	public void setCs(CommentService cs) {
		this.cs = cs;
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

	public PResumeService getPrs() {
		return prs;
	}

	public void setPrs(PResumeService prs) {
		this.prs = prs;
	}

}
