package kr.spring.projectone.dao;

import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;

public interface TempClassDao {
	
	// 임시클래스 구역

	void submitTempClass(@Param("tempClass")TemporaryClassVo tempClass);

	void updateImage(@Param("tempClass")TemporaryClassVo tempClass);

	TemporaryClassVo getMySubmitClass(@Param("id")String st_id);
	
	void insertImage(@Param("id")String st_id, @Param("image")String file);

	void insertTempChapter(@Param("tempMain")TemporaryMainChapterVo tempChapter);
	
	void insertSubChapter(@Param("tempSub")TemporarySubChapterVo tempSub);
	
	void updateContent(@Param("priNum")int subPriNum, @Param("tempSub")TemporarySubChapterVo tempSub);
	
	void notifyFinalStep(@Param("classCode")String detectCode);

	
	// 관리자용

	ArrayList<TemporaryClassVo> getTempClass();

	TemporaryClassVo getTempClassCode(@Param("code")String code);

	ArrayList<TemporaryMainChapterVo> detectChapterCode(@Param("tempMain")String addClass_code);
	
	ArrayList<TemporarySubChapterVo> getSubChapter(@Param("i")int i);

	void firstConfirm(@Param("comment")String addClass_adminComment2, @Param("answer")char addClass_confirm2, @Param("today")Date today, @Param("code")String code);

	void finalConfirm(@Param("tempClass")TemporaryClassVo tempClass);

	void setMainChapter(@Param("conMain")TemporaryMainChapterVo mainPart);

	void setSubChapter(@Param("conSub")TemporarySubChapterVo subPart);
	
	void deteleTempClass(@Param("code")String code);

	



	

	
	
}
