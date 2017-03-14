package com.gmg.dao;

import java.util.List;



import com.gmg.domain.Comment;

public interface CommentDao {
	 public static final String SERVER_NAME="com.gmg.dao.impl.CommentDaoImpl";
	  public void insertComment(Comment comment);
	  public List<Comment> getComments(int jobId);
}
