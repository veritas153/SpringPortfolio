package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.ClassVo;

public interface ClassDao {

	ArrayList<ClassVo> getAllClass();

	ClassVo getSelectedClass(@Param("class")ClassVo detectClass);

	
	
}
