package com.gmg.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gmg.domain.Comment;
import com.gmg.domain.PResume;
import com.gmg.service.CommentService;
import com.gmg.service.DircService;
import com.gmg.service.JobService;
import com.gmg.service.PResumeService;
import com.gmg.service.ResumeService;

@Controller
public class PResumeAction {
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

	@RequestMapping("uploadResume.do")
	public String uploadResume(
			@RequestParam("fileName") MultipartFile fileName,
			HttpServletRequest request) {
		String myFile = fileName.getOriginalFilename();
		String fileType = myFile.substring(myFile.lastIndexOf(".") + 1);
		String resumeFile = request.getSession().getServletContext()
				.getRealPath("resumefile");
		File file = new File(resumeFile, myFile);
		String userName = request.getParameter("userName");
		String uid = request.getParameter("uid");
		int uid_ = Integer.parseInt(uid);
		String jobId = request.getParameter("jobId");
		String filename = request.getParameter("filename");
		File file_ = new File(resumeFile + File.separator + filename);
		PResume resume = new PResume(myFile, userName, uid_);
		if ("doc".equals(fileType) || "docx".equals(fileType)) {

			try {
				fileName.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (filename != null) {
				prs.deleteByUid(uid_);
				file_.delete();
				prs.insert(resume);
				request.setAttribute("myMessage", "更改成功");
			} else {
				prs.insert(resume);
				request.setAttribute("myMessage", "上传成功");
			}
			List<Comment> commentList = cs.getComments(jobId);
			request.setAttribute("commentList", commentList);
			request.getSession().setAttribute("resume", resume);

		} else {
			request.setAttribute("myMessage", "只允许word");
		}
		return "job/JobDetail";
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
