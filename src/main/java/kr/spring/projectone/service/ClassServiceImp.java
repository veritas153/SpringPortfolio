package kr.spring.projectone.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.TempClassDao;
import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;

@Service
public class ClassServiceImp implements ClassService {

	@Autowired
	private TempClassDao tempClassDao;
	
	@Override
	public boolean submitClass(TemporaryClassVo tempClass) {
		
		if (tempClass.getAddClass_category().equals("#")) {
			return false;
		}
		if (tempClass.getAddClass_title() == null || tempClass.getAddClass_title().length() == 0) {
			return false;
		}
		if (tempClass.getAddClass_thumbIntro() == null || tempClass.getAddClass_thumbIntro().equals("")) {
			return false;
		}
		if (tempClass.getAddClass_introduction() == null || tempClass.getAddClass_introduction().equals("")) {
			return false;
		}
		if (tempClass.getAddClass_monthly() == 0) {
			return false;
		}
		if (tempClass.getAddClass_price() == null || tempClass.getAddClass_price() == 0) {
			return false;
		}
		if (tempClass.getAddClass_hasPackage() == 'y' && (tempClass.getAddClass_setPackage() == null || tempClass.getAddClass_setPackage().equals(""))) {
			return false;
		}
		if (tempClass.getAddClass_difficulty().equals("#")) {
			return false;
		}
		if (tempClass.getAddClass_creator() == null || tempClass.getAddClass_creator().equals("")) {
			return false;
		}
		

		
		String tempClassCode = "";
		
		for (int i = 0 ; i < 20; i++) {
			
			int random = (int)(Math.random() * 9);
			
			tempClassCode += random;
		
			 
		}
		System.out.println(tempClassCode);
		
		tempClass.setAddClass_code(tempClassCode);
		
		char insertConfirm = 'W';
		tempClass.setAddClass_confirm(insertConfirm);
		
		tempClassDao.submitTempClass(tempClass);
		
		return true;
	}

	@Override
	public TemporaryClassVo getMySubmitClass(String st_id) {
		
		return tempClassDao.getMySubmitClass(st_id);
	}

	@Override
	public void insertImage(String st_id, String file) {
		tempClassDao.insertImage(st_id,file);
		
	}

	@Override
	public boolean insertTempChapter(TemporaryMainChapterVo tempChapter, TemporarySubChapterVo tempSub, TemporaryClassVo tempClass, Integer[] conMainChapter_number2, Integer[] conSubChapter_number2, String []conMainChapter_title2, String []conSubChapter_title2) {
		
	
		for(int i = 0,j=0 ; i < conMainChapter_number2.length; i++) { // i: 메인 챕터 값, j: 서브 챕터 배열길이
			
			System.out.println("메인 챕터 : " + conMainChapter_title2[i]);
			
			tempChapter.setConMainChapter_addClass_code(tempClass.getAddClass_code());
			tempChapter.setConMainChapter_title(conMainChapter_title2[i]);
			tempChapter.setConMainChapter_number(conMainChapter_number2[i]);
			tempClassDao.insertTempChapter(tempChapter);
			
			for(int k = 0; k < conSubChapter_number2[i]; k++) {
				System.out.println("서브 챕터 : " + conSubChapter_title2[j]);
				
				tempSub.setConSubChapter_title(conSubChapter_title2[j++]);
				tempSub.setConSubChapter_number(k+1);
				tempSub.setConSubChapter_conMainChapter_priNum(tempChapter.getConMainChapter_priNum());
				tempClassDao.insertSubChapter(tempSub);
				
				
				
			}
			
		}
		
		
		return true;
	}
	
	

	@Override
	public boolean updateContent(TemporarySubChapterVo tempSub, int[] conSubChapter_priNum2, String[] conSubChapter_title2,
			String[] conSubChapter_content2) {
		
		
		for (int i = 0 ; i < conSubChapter_title2.length; i++) {
			
			if (conSubChapter_title2[i] == null) {
				return false;
			}
			if (conSubChapter_content2[i] == null || conSubChapter_content2[i].equals("")) {
				return false;
			}
			
			int subPriNum = conSubChapter_priNum2[i];
			System.out.println(subPriNum);
			
			tempSub.setConSubChapter_title(conSubChapter_title2[i]);
			tempSub.setConSubChapter_content(conSubChapter_content2[i]);
			System.out.println(tempSub);
			tempClassDao.updateContent(subPriNum, tempSub);
			
		}
		
		
		return true;
	}

	
	
	@Override
	public void notifyFinalStep(String code) {
		
		TemporaryClassVo tempClass = tempClassDao.getTempClassCode(code);
		
		String detectCode = tempClass.getAddClass_code();
		
		tempClassDao.notifyFinalStep(detectCode);
		
		
	}


	
	
	// 여기서부턴 관리자용
	
	@Override
	public ArrayList<TemporaryClassVo> getTempClass() {
		
		return tempClassDao.getTempClass();
	}

	@Override
	public TemporaryClassVo getTempClassCode(String code) {
		
		return tempClassDao.getTempClassCode(code);
	}

	@Override
	public ArrayList<TemporaryMainChapterVo> detectChapterCode(String addClass_code) {
		
		return tempClassDao.detectChapterCode(addClass_code);
	}

	@Override
	public ArrayList<TemporarySubChapterVo> getSubChapter(int i) {
		
		return tempClassDao.getSubChapter(i);
	}

	@Override
	public boolean firstConfirm(String addClass_adminComment2, char addClass_confirm2, String code) {

		if (addClass_adminComment2 == null || addClass_adminComment2.equals("") || addClass_adminComment2.length() > 150) {
			
			return false;
		}
	
		tempClassDao.firstConfirm(addClass_adminComment2, addClass_confirm2, code);
		return true;
	}

	@Override
	public boolean confirmClass(TemporaryClassVo tempClass, String code, char addClass_finalSubmit2, String addClass_openDate2) {
		
		if (addClass_finalSubmit2== 'N') {
			return false;
		}
		
		tempClass.setAddClass_finalSubmit(addClass_finalSubmit2);
		tempClass.setAddClass_openDate(addClass_openDate2);
		tempClassDao.finalConfirm(tempClass);
		
		return true;
		
	}


	





}
