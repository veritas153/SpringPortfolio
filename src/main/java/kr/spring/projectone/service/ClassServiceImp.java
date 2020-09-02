package kr.spring.projectone.service;

import java.util.Random;

import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.TempClassDao;
import kr.spring.projectone.vo.TemporaryClassVo;

@Service
public class ClassServiceImp implements ClassService {

	private TempClassDao tempClassDao;
	
	@Override
	public boolean submitClass(TemporaryClassVo tempClass) {
		
		if (tempClass.getAddClass_category().equals("#")) {
			return false;
		}
		if (tempClass.getAddClass_title() == null || tempClass.getAddClass_title().length() == 0) {
			return false;
		}
		if (tempClass.getAddClass_thumbIntro() == null || tempClass.getAddClass_thumbIntro().length() == 0) {
			return false;
		}
		if (tempClass.getAddClass_image() == null || tempClass.getAddClass_image().length() == 0) {
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
		
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		
		String tempClassCode = "";
		
		for (int i = 0 ; i < 20; i++) {
			
			int random = (int)(Math.random() * 62);
			
			if (random > 10) {
				tempClassCode += random;
			} else if (random > 35) {
				tempClassCode += (char)(random + 61);
			} else {
				tempClassCode += (char)(random + 55);
			}
			 
		}
		
		tempClass.setAddClass_code(tempClassCode);
		tempClassDao.submitTempClass(tempClass);
		
		return true;
	}


}
