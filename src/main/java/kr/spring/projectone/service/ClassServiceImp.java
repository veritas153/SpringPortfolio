package kr.spring.projectone.service;

import java.util.ArrayList;
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



	





}
