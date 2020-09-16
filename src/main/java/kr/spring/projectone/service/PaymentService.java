package kr.spring.projectone.service;

import java.util.ArrayList;

import kr.spring.projectone.vo.PaymentVo;

public interface PaymentService {

	ArrayList<PaymentVo> getPaymentInfo(String st_id);

	boolean inputPaymentInfo(PaymentVo paymentStat, String st_id);

	void getAllPaymentInfo();

}
