package com.gmg.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadResumeAction extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 获取要下载的文件
		String fileName = request.getParameter("fileName");
		String path = request.getSession().getServletContext()
				.getRealPath("resumefile");
		String filePath = path + "\\" + fileName;
		File file = new File(filePath);// 创建下载的文件对象
		// 使用输入流读取文件
		FileInputStream fis = new FileInputStream(file);
		// 设置响应头信息
		response.setHeader("Content-Disposition", "attachment;filename="
				+ new String(fileName.getBytes("utf-8"), "iso8859-1"));
		OutputStream os = response.getOutputStream();// 使用响应创建一个输出流
		byte[] b = new byte[1024];
		int len = 0;
		while ((len = fis.read(b)) != -1) {
			os.write(b, 0, len);
		}
		os.close();
		fis.close();
	}
}
