package kr.spring.projectone.dao;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.UserVo;

public interface UserDao {

	void insertStudent(@Param("user") UserVo user);

	UserVo getUser(@Param("id")String st_id);

}
