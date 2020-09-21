package kr.spring.projectone.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.VipDao;
import kr.spring.projectone.vo.VipCodeListVo;

@Service
public class VipServiceImp implements VipService {

	@Autowired
	private VipDao vipDao;
	
	@Override
	public VipCodeListVo checkVip(String st_id) {
		
		ArrayList <VipCodeListVo> checkCode = vipDao.getVipCode(st_id);
		
		VipCodeListVo vipCode = null;
		
		for (int i = 0 ; i < checkCode.size(); i++) {
			
			vipCode = checkCode.get(i);
			if (vipCode != null) {
				System.out.println(vipCode);
				break;
			}
			
		}
		return vipCode;
		
	}

	@Override
	public String insertVipCode(VipCodeListVo vipCodeList, String st_id) {
		
		StringBuffer vipCode1 = new StringBuffer();
	    Random rnd = new Random();
	      for (int i = 0; i < 25; i++) {
	        int rIndex = rnd.nextInt(3);
	        switch (rIndex) {
	          case 0:
	            // a-z
	        	vipCode1.append((char) ((int) (rnd.nextInt(26)) + 97));
	            break;
	          case 1:
	            // A-Z
	        	vipCode1.append((char) ((int) (rnd.nextInt(26)) + 65));
	            break;
	          case 2:
	            // 0-9
	        	vipCode1.append((rnd.nextInt(10)));
	            break;
	        }
	    }
	      
	    String vipCode = vipCode1.substring(0);
		
	    vipCodeList.setVip_st_id(st_id);
	    vipCodeList.setVip_code(vipCode);
	    
	    System.out.println(vipCode);
	    Date today = new Date();
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	    String date = df.format(today);
	    
	    vipCodeList.setVip_dueDate(date);
	    System.out.println(vipCodeList);

	    
	    vipDao.insertVipCode(vipCodeList);
	    
		return vipCode;
		
	}

}
