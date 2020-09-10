package kr.spring.projectone.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;

public interface ClassService {

	boolean submitClass(TemporaryClassVo tempClass);

	TemporaryClassVo getMySubmitClass(String st_id);

	void insertImage(String st_id, String file);

	boolean insertTempChapter(TemporaryMainChapterVo tempChapter, TemporarySubChapterVo tempSub, TemporaryClassVo tempClass, Integer[] conMainChapter_number2, Integer[] conSubChapter_number2, String[] conMainChapter_title2, String[] conSubChapter_title2);

	boolean updateContent(TemporarySubChapterVo tempSub, int[] conSubChapter_priNum2, String[] conSubChapter_title2, String[] conSubChapter_content2);
	
	void notifyFinalStep(String code);
	
	// 운영진 전용
	
	ArrayList<TemporaryClassVo> getTempClass();

	TemporaryClassVo getTempClassCode(String code);

	ArrayList<TemporaryMainChapterVo> detectChapterCode(String addClass_code);

	ArrayList<TemporarySubChapterVo> getSubChapter(int i);

	boolean firstConfirm(String addClass_adminComment2, char addClass_confirm2, String code);

	




	





	

	
}
