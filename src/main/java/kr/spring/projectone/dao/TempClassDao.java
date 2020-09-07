package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;

public interface TempClassDao {

	void submitTempClass(@Param("tempClass")TemporaryClassVo tempClass);

	void updateImage(@Param("tempClass")TemporaryClassVo tempClass);

	TemporaryClassVo getMySubmitClass(@Param("id")String st_id);
	
	void insertImage(@Param("id")String st_id, @Param("image")String file);

	void insertTempChapter(@Param("tempMain")TemporaryMainChapterVo tempChapter);
	
	void insertSubChapter(@Param("tempSub")TemporarySubChapterVo tempSub);

	
	// 관리자용

	ArrayList<TemporaryClassVo> getTempClass();

	TemporaryClassVo getTempClassCode(@Param("code")String code);

	ArrayList<TemporaryMainChapterVo> detectChapterCode(@Param("tempMain")String addClass_code);

	ArrayList<TemporarySubChapterVo> detectSubContain(@Param("tempSub")ArrayList<TemporaryMainChapterVo> tempMain);

	

	
	
}
