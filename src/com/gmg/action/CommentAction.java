package com.gmg.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gmg.domain.Comment;
import com.gmg.domain.Job;
import com.gmg.service.CommentService;
import com.gmg.service.DircService;
import com.gmg.service.JobService;

@Controller
public class CommentAction {
	@Resource(name = JobService.SERVER_NAME)
	private JobService js;
	@Resource(name = CommentService.SERVER_NAME)
	private CommentService cs;
	@Resource(name = DircService.SERVER_NAME)
	private DircService ds;

	@RequestMapping("insertComment.do")
	public String insertComment(HttpServletRequest request) {
		String jobId = request.getParameter("jobId");
		int jobId_ = Integer.parseInt(jobId);
		String content = request.getParameter("content");
		Comment cm = new Comment(content, jobId_);
		cs.insertComment(cm);
		List<Comment> commentList = cs.getComments(jobId);
		Job job = js.getById(jobId);
		request.setAttribute("commentList", commentList);
		request.setAttribute("job_", job);
		request.setAttribute("commentList", commentList);
		return "job/JobDetail";
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

}
