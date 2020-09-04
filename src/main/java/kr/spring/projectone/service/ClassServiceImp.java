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
			
			int random = (int)(Math.random() * 62);
			
			if (random < 10) {
				tempClassCode += random;
			} else if (random < 35) {
				tempClassCode += (char)(random + 61);
			} else {
				tempClassCode += (char)(random + 55);
			}
			 
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
	public boolean insertTempChapter(TemporaryMainChapterVo tempChapter, TemporarySubChapterVo tempSub,TemporaryClassVo tempClass) {
		
		if (tempChapter.getConMainChapter_number() == null || tempChapter.getConMainChapter_number() == 0) {
			return false;
		}
		if (tempChapter.getConMainChapter_title() == null || tempChapter.getConMainChapter_title().equals("")) {
			return false;
		}
		if (tempSub.getConSubChapter_number() == null || tempSub.getConSubChapter_number() == 0) {
			return false;
		}
		if (tempSub.getConSubChapter_title() == null || tempSub.getConSubChapter_title().equals("")) {
			return false;
		}
		
		tempChapter.setConMainChapter_addClass_code(tempClass.getAddClass_code());
		tempClassDao.insertTempChapter(tempChapter);
		tempSub.setConSubChapter_conMainChapter_priNum(tempChapter.getConMainChapter_priNum());
		tempClassDao.insertSubChapter(tempSub);
		return true;
	}

	
	
	// 여기서부턴 관리자용
	
	@Override
	public ArrayList<TemporaryClassVo> getTempClass() {
		
		return tempClassDao.getTempClass();
	}





}
