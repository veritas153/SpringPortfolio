package kr.spring.projectone.service;

import java.util.ArrayList;

import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;

public interface PaymentService {

	PaymentVo getPaymentInfo(String st_id);

	void getAllPaymentInfo();

	boolean detectPaymentInfo(PaymentVo paymentStat, ClassVo classList, String payment_cardBrand,
			String payment_cardOption, String payment_cardNumber, String payment_dueMonth, String payment_dueYear,
			String payment_cardCVC, String payment_cardPassword, String payment_ownerBirthday,
			String payment_businessNumber, String payment_businessNumber2);

	void inputHistory(PurchaseHistoryVo purchaseInfo, String code, String st_id);

	
}
