package com.gmg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.gmg.domain.Comment;

public interface CommentMapper {
  @Insert("insert into comment(content,jobId) values(#{content},#{jobId})")
  public void insertComment(Comment comment);
  @Select("select * from comment where jobId=#{jobId}")
  public List<Comment> getComments(int jobId);
}
