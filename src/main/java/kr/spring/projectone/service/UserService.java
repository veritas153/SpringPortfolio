package kr.spring.projectone.service;

import kr.spring.projectone.vo.UserVo;

public interface UserService {
	
	boolean signup(UserVo user);

	UserVo isUser(UserVo detectUser);

}
