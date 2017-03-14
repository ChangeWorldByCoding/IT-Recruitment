package com.gmg.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmg.domain.Admin;
import com.gmg.domain.Result;
import com.gmg.service.AdminService;
import com.gmg.service.ResumeService;

@Controller
public class AdminAction {
	@Resource(name = AdminService.SERVER_NAME)
	private AdminService as;
	@Resource(name = ResumeService.SERVER_NAME)
	private ResumeService rs;

	@RequestMapping("adminRegister.do")
	public String register(@ModelAttribute("admin") Admin admin,
			HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String code = request.getSession().getAttribute("code").toString();
		String myCode = request.getParameter("code");
		if (myCode.equalsIgnoreCase(code)) {
			as.insert(admin);
			request.getSession().setAttribute("admin", admin);
			return "admin/admin";
		} else {
			request.setAttribute("message", "验证码错误");
			return "admin/adminRegister";
		}

	}

	@RequestMapping("adminLogin.do")
	public String login(@ModelAttribute("admin") Admin admin,
			HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String userName = request.getParameter("userName");
		int id=as.findByUsername(userName);
		boolean flag = as.checkAdmin(admin);
		int num0 = rs.getCount0(id);
		int num1 = rs.getCount1(id);
		if (flag) {
			request.getSession().setAttribute("admin", admin);
			request.setAttribute("num0", num0);
			request.setAttribute("num1", num1);
			request.getSession().setAttribute("adminId", id);
			return "admin/admin";
		} else {
			request.setAttribute("myMessage", "用户名或密码输入错误");
			return "admin/adminLogin";

		}
	}

	@RequestMapping("adminLoginOut.do")
	public String loginOut(HttpServletRequest request) {
		request.getSession().removeAttribute("admin");
		return "index_forward";
	}

	@RequestMapping("adminUpdatePasw.do")
	public String updatePasw(HttpServletRequest request) {
		String username = request.getParameter("username");
		String pasw2 = request.getParameter("pasw2");
		String pasw3 = request.getParameter("pasw3");
		Admin admin = new Admin(username, pasw3);
		if (pasw2.equals(pasw3)) {
			as.update(admin);
			request.setAttribute("message1", "密码修改成功！");
			return "admin/adminUpdate";
		} else {
			request.setAttribute("message2", "两次输入的新密码不一致！");
			return "admin/adminUpdate";
		}

	}

	@RequestMapping(value = "ajaxAdmin.do", produces = "text/html;charset=utf-8")
	@ResponseBody
	public String ajax(@RequestParam String name) {
		Result result = new Result();
		List<Admin> listAdmin = as.getAdmins();
		for (Admin list : listAdmin) {
			if (list.getUserName().equals(name)) {
				result.setMessage("<font color='red'>用户已存在</font>");
			} else {
			}
		}
		return result.getMessage();
	}

	public AdminService getAs() {
		return as;
	}

	public void setAs(AdminService as) {
		this.as = as;
	}

	public ResumeService getRs() {
		return rs;
	}

	public void setRs(ResumeService rs) {
		this.rs = rs;
	}

}
