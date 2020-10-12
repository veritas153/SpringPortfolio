package kr.spring.projectone.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.spring.projectone.vo.CurrentClassVo;
import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.MainChapterVo;
import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;
import kr.spring.projectone.vo.SubChapterVo;
import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;
import kr.spring.projectone.vo.VipCodeListVo;

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

	String confirmClass(TemporaryClassVo tempClass, String code, char addClass_finalSubmit2, String addClass_openDate2);

	
	// 여기서부턴 전체 클래스 받아오기!
	
	ArrayList<ClassVo> getAllClass();
	
	ArrayList<ClassVo> getFutureClass();

	ClassVo getSelectedClass(String code);

	ArrayList<PurchaseHistoryVo> getMyClass(String st_id);

	ArrayList<MainChapterVo> getMainChapters(String class_code);

	ArrayList<SubChapterVo> findSubChapter(int i);

	void inputClass(String code, String st_id, String string, int i);

	ArrayList<CurrentClassVo> searchHistory(String st_id);

	ArrayList<CurrentClassVo> searchPurchaseHistory(String st_id, String code);

	void vipInsertClass(String st_id, VipCodeListVo vipList, String class_title, String code);

	CurrentClassVo checkVipSelected(String vip_code, String code);

	SubChapterVo returnContent(int subChapter);

	ArrayList<ClassVo> checkMyClass(String st_id);

	void deteleTempClass(String code);

	ArrayList<ClassVo> getCurrentClass();

	ArrayList<ClassVo> getArtsCurrentClass();

	ArrayList<ClassVo> getIllustrationCurrentClass();

	ArrayList<ClassVo> getCraftCurrentClass();

	ArrayList<ClassVo> getSportCurrentClass();

	ArrayList<ClassVo> getHumanitiesCurrentClass();

	ArrayList<ClassVo> getMusicCurrentClass();

	ArrayList<ClassVo> getProgrammingCurrentClass();

	ArrayList<ClassVo> getFilmCurrentClass();

	

	
	
	
}
