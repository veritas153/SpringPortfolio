package kr.spring.projectone.dao;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.TemporaryClassVo;

public interface TempClassDao {

	void submitTempClass(@Param("tempClass")TemporaryClassVo tempClass);

	

	
	
}
