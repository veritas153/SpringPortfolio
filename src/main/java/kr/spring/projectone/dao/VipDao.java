package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.VipCodeListVo;

public interface VipDao {
	
	ArrayList<VipCodeListVo> getVipCode(@Param("id")String st_id);

	void insertVipCode(@Param("vipList")VipCodeListVo vipCodeList);

	ArrayList<VipCodeListVo> getVipList();
	
	

}
