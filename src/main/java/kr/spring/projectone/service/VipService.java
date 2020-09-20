package kr.spring.projectone.service;

import kr.spring.projectone.vo.VipCodeListVo;

public interface VipService {

	VipCodeListVo checkVip(String st_id);

	boolean insertVipCode(String st_id);

}
