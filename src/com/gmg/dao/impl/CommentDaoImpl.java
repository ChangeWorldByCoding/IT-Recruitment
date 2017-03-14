package com.gmg.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.gmg.dao.CommentDao;
import com.gmg.domain.Comment;
import com.gmg.mapper.CommentMapper;
import com.gmg.mapper.DircMapper;
import com.gmg.util.ConnUtil;
@Repository(value=CommentDao.SERVER_NAME)
public class CommentDaoImpl implements CommentDao{

	@Override
	public void insertComment(Comment comment) {
		SqlSession session=ConnUtil.getSf().openSession(true);
		CommentMapper cm=session.getMapper(CommentMapper.class);
		cm.insertComment(comment);
	}

	@Override
	public List<Comment> getComments(int jobId) {
		SqlSession session=ConnUtil.getSf().openSession(true);
		CommentMapper cm=session.getMapper(CommentMapper.class);
		return cm.getComments(jobId);
	}

}
