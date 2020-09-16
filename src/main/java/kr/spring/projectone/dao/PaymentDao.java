package kr.spring.projectone.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.spring.projectone.vo.PaymentVo;

public interface PaymentDao {

	ArrayList<PaymentVo> getPaymentInfo(@Param("id")String st_id);

	ArrayList<PaymentVo> getAllPaymentInfo();

}
