package kr.spring.projectone.service;

import javax.servlet.http.HttpServletRequest;

import kr.spring.projectone.vo.UserVo;

public interface UserService {

	boolean signup(UserVo user);

	UserVo isUser(UserVo detectUser);

	UserVo getUser(HttpServletRequest request);
	
	UserVo getUser(String st_id);

	UserVo getInstructor(UserVo user);

}
