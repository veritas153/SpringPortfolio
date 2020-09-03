package kr.spring.projectone.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.spring.projectone.vo.TemporaryClassVo;

public interface ClassService {

	boolean submitClass(TemporaryClassVo tempClass);

	TemporaryClassVo getMySubmitClass(String st_id);

	void insertImage(String st_id, String file);

	
	// 운영진 전용
	
	ArrayList<TemporaryClassVo> getTempClass();





	

	
}
