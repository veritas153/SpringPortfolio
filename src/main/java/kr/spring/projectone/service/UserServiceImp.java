package kr.spring.projectone.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.UserDao;
import kr.spring.projectone.vo.UserVo;

@Service
public class UserServiceImp implements UserService{
	
	@Autowired
	private UserDao userDao;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	

	@Override
	public boolean signup(UserVo user) {
		if (user == null)
			return false;
		if (user.getSt_id() == null || user.getSt_id().length() == 0)
			return false;
		if (user.getSt_password() == null || user.getSt_password().length() == 0) 
			return false;
		if (user.getSt_email() == null || user.getSt_email().length() == 0)
			return false;
		if (user.getSt_phoneNumber() == null || user.getSt_phoneNumber() == 0)
			return false;
		// if (userDao.getUser(user.getSt_id()) != null)
			// return false; 잠시후 작업
		
		String encodePw = passwordEncoder.encode(user.getSt_password());
		user.setSt_password(encodePw);
		userDao.insertStudent(user);
		return true;
		
	}


	@Override
	public UserVo isUser(UserVo detectUser) {
		
		UserVo user = userDao.getUser(detectUser.getSt_id());
		
		if (user != null && passwordEncoder.matches(detectUser.getSt_password(), user.getSt_password())) {
			return user;
		} else {
			return null;
		}
		
		
	}



}
