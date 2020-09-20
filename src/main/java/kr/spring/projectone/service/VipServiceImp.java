package kr.spring.projectone.service;

import java.util.ArrayList;

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
	public boolean insertVipCode(String st_id) {
		// TODO Auto-generated method stub
		return false;
	}

}
