package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.PurchaseHistoryVo;

public interface PurchaseDao {

	ArrayList<PurchaseHistoryVo> getAllHistory();

	PurchaseHistoryVo searchHistory(@Param("id")String st_id);
	
	void inputHistory(@Param("history")PurchaseHistoryVo historyInfo);

	


}
