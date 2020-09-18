package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;

public interface PaymentDao {

	PaymentVo getPaymentInfo(@Param("id")String st_id);

	ArrayList<PaymentVo> getAllPaymentInfo();

	void insertPaymentInfo(@Param("user")PaymentVo paymentStat);

	void updatePaymentInfo(@Param("info")PaymentVo detectInfo, @Param("id")String st_id);

	
	
}
