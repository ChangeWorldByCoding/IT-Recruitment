package com.gmg.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmg.domain.Result;
import com.gmg.domain.Resume;
import com.gmg.domain.User;
import com.gmg.service.CommentService;
import com.gmg.service.DircService;
import com.gmg.service.JobService;
import com.gmg.service.ResumeService;
import com.gmg.service.UserService;

@Controller
public class UserAction {
	@Resource(name = ResumeService.SERVER_NAME)
	private ResumeService rs;
	@Resource(name = JobService.SERVER_NAME)
	private JobService js;
	@Resource(name = DircService.SERVER_NAME)
	private DircService ds;
	@Resource(name = UserService.SERVER_NAME)
	private UserService us;
	@Resource(name = CommentService.SERVER_NAME)
	private CommentService cs;

	@RequestMapping("userRegister.do")
	public String register(@ModelAttribute("user") User user,
			HttpServletRequest request) {
		String code = request.getSession().getAttribute("code").toString();
		String myCode = request.getParameter("code");
		if (myCode.equalsIgnoreCase(code)) {
			us.insert(user);
			request.getSession().setAttribute("user", user);
			return "index";
		} else {
			request.setAttribute("message", "验证码错误");
			return "register";
		}

	}

	@RequestMapping("userLogin.do")
	public String login(HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String passWord = request.getParameter("passWord");
		User user = new User(userName, passWord);
		boolean flag = us.checkUser(user);
		User u = us.findByUsername(userName);
		Resume resume = rs.findByuserName(userName);
		if (flag) {
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("u", u);
			request.getSession().setAttribute("resume", resume);
			return "index_forward";
		} else {
			request.setAttribute("myMessage", "用户名或密码输入错误");
			return "login";

		}
	}

	@RequestMapping("userLoginOut.do")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		request.getSession().removeAttribute("resume");
		return "index_forward";
	}

	@RequestMapping("updatePasw.do")
	public String updatePasw(HttpServletRequest request) {
		String username = request.getParameter("username");
		String pasw2 = request.getParameter("pasw2");
		String pasw3 = request.getParameter("pasw3");
		User user = new User(username, pasw3);
		if (pasw2.equals(pasw3)) {
			us.update(user);
			request.setAttribute("message1", "密码修改成功！");
			return "updatePasw";
		} else {
			request.setAttribute("message2", "两次输入的新密码不一致！");
			return "updatePasw";
		}

	}

	@RequestMapping(value = "ajax.do", produces = "text/html;charset=utf-8")
	@ResponseBody
	public String ajax(@RequestParam String name) {
		Result result = new Result();
		List<User> listUser = us.getUsers();
		for (User list : listUser) {
			if (list.getUserName().equals(name)) {
				result.setMessage("<font color='red'>用户已存在</font>");
			} else {
			}
		}
		return result.getMessage();
	}

	@RequestMapping(value = "insertOnlineResume.do")
	public String insertOnlineResume(@ModelAttribute("user") User user,
			HttpServletRequest request) {
		String id = request.getParameter("id");
		int id_ = Integer.parseInt(id);
		user.setId(id_);
		String userName = request.getParameter("userName");
		us.updateOnlineResume(user);
		User u = us.findByUsername(userName);
		request.getSession().setAttribute("u", u);
		return "resume/OnlineResume";
	}

	public UserService getUs() {
		return us;
	}

	public void setUs(UserService us) {
		this.us = us;
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

	public ResumeService getRs() {
		return rs;
	}

	public void setRs(ResumeService rs) {
		this.rs = rs;
	}

}
