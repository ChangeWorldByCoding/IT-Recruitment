package com.gmg.service;

import java.util.List;

import com.gmg.domain.Comment;

public interface CommentService {
	 public static final String SERVER_NAME="com.gmg.service.impl.CommentServiceImpl";
	  public void insertComment(Comment comment);
	  public List<Comment> getComments(String jobId);
}
