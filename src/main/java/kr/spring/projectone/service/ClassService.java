package kr.spring.projectone.service;

import javax.servlet.http.HttpServletRequest;

import kr.spring.projectone.vo.TemporaryClassVo;

public interface ClassService {

	boolean submitClass(TemporaryClassVo tempClass);

	TemporaryClassVo getMySubmitClass(String st_id);

	void insertImage(String st_id, String file);

	TemporaryClassVo wholeTempClass(TemporaryClassVo tempClassList);





	

	
}
