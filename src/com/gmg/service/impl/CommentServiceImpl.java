package com.gmg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmg.dao.CommentDao;
import com.gmg.domain.Comment;
import com.gmg.service.CommentService;
@Service(value=CommentService.SERVER_NAME)
public class CommentServiceImpl implements CommentService{
   @Resource(name=CommentDao.SERVER_NAME)
   private CommentDao cd;
	@Override
	public void insertComment(Comment comment) {
		cd.insertComment(comment);
	}

	@Override
	public List<Comment> getComments(String jobId) {
		int jobId_=Integer.parseInt(jobId);
		return cd.getComments(jobId_);
	}

	public CommentDao getCd() {
		return cd;
	}

	public void setCd(CommentDao cd) {
		this.cd = cd;
	}
	

}
