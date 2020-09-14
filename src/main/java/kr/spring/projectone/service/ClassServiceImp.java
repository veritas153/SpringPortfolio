package kr.spring.projectone.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.ClassDao;
import kr.spring.projectone.dao.TempClassDao;
import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;

@Service
public class ClassServiceImp implements ClassService {

	@Autowired
	private TempClassDao tempClassDao;
	@Autowired
	private ClassDao classDao;
	
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
	public String confirmClass(TemporaryClassVo tempClass, String code, char addClass_finalSubmit2, String addClass_openDate2) {
		
		if (addClass_finalSubmit2== 'N') {
			return null;
		}
		
		tempClass.setAddClass_finalSubmit(addClass_finalSubmit2);
		tempClass.setAddClass_openDate(addClass_openDate2);
		
		// 새로운 코드 적용 (임시클래스는 숫자로만 랜덤 20자, 본 클래스  코드는 숫자,대소문자로 구성된 랜덤 20자) 
		
		StringBuffer tmp = new StringBuffer();
	    Random rnd = new Random();
	      for (int i = 0; i < 20; i++) {
	        int rIndex = rnd.nextInt(3);
	        switch (rIndex) {
	          case 0:
	            // a-z
	        	tmp.append((char) ((int) (rnd.nextInt(26)) + 97));
	            break;
	          case 1:
	            // A-Z
	        	tmp.append((char) ((int) (rnd.nextInt(26)) + 65));
	            break;
	          case 2:
	            // 0-9
	        	tmp.append((rnd.nextInt(10)));
	            break;
	        }
	    }
		
	    // 우선 클래스 등록부터
	    
	    String classCode = tmp.substring(0);
	    tempClass.setAddClass_code(classCode);
	   
	    
	    int classWeek = tempClass.getAddClass_monthly();
	    System.out.println(classWeek);
	    
	    Integer totalday = 0;
	    
	    if (classWeek == 1) {
	    	totalday = 28;
	    }
	    if (classWeek == 3) {
	    	totalday = 84;
	    }
	    if (classWeek == 5) {
	    	totalday = 140;
	    }
	    if (classWeek == 6) {
	    	totalday = 180;
	    }
	    if (classWeek == 12) {
	    	totalday = 365;
	    }
	    
	    tempClass.setAddClass_classWeek(totalday);
	    System.out.println(tempClass);
	    tempClassDao.finalConfirm(tempClass);
	    
	    
	    // 다음은 메인 챕터
	    
	    ArrayList<TemporaryMainChapterVo> mainChapter = tempClassDao.detectChapterCode(code);
	   
	    for (int i = 0 ; i < mainChapter.size(); i++) {
	    	
	    	TemporaryMainChapterVo mainPart = mainChapter.get(i);
	    	mainPart.setConMainChapter_addClass_code(classCode);
	    	int priNum = mainPart.getConMainChapter_priNum();
	    	System.out.println(mainChapter.get(i));
	    	tempClassDao.setMainChapter(mainPart);
	    	
	    	ArrayList<TemporarySubChapterVo> subChapter = tempClassDao.getSubChapter(priNum);
	    		    	
	    	for (int j = 0 ; j < subChapter.size(); j ++) {
	    	
	    		TemporarySubChapterVo subPart = subChapter.get(j);
		   	  	tempClassDao.setSubChapter(subPart);
	    	
	    	}
	    	
	    	System.out.println();
	    	System.out.println(i);
	    	System.out.println();
	    }
	    
		return classCode;
		
	}

	
	// 여기서부턴 정식 클래스 관리
	
	@Override
	public ClassVo getAllClass() {
		
		return classDao.getAllClass();
	}


	





}
