package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.MainChapterVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;
import kr.spring.projectone.vo.SubChapterVo;

public interface ClassDao {

	ArrayList<ClassVo> getAllClass();

	ClassVo getSelectedClass(@Param("class")ClassVo detectClass);

	ArrayList<PurchaseHistoryVo> getMyClass(@Param("id")String st_id);

	ArrayList<MainChapterVo> getMainChapter(@Param("code")String class_code);

	ArrayList<SubChapterVo> findSubChapter(@Param("i")int i);



	
	
}
