package kr.spring.projectone.service;

import kr.spring.projectone.vo.VipCodeListVo;

public interface VipService {

	VipCodeListVo checkVip(String st_id);

	String insertVipCode(VipCodeListVo vipCodeList, String st_id);

}
