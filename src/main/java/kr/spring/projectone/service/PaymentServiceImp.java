package kr.spring.projectone.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.PaymentDao;
import kr.spring.projectone.vo.PaymentVo;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired
	private PaymentDao paymentDao;
	
	@Override
	public void getAllPaymentInfo(){
		paymentDao.getAllPaymentInfo();
	}
	
	
	@Override
	public ArrayList<PaymentVo> getPaymentInfo(String st_id) {
		
		return paymentDao.getPaymentInfo(st_id);
	}

	@Override
	public boolean inputPaymentInfo(PaymentVo paymentStat, String st_id) {

		ArrayList<PaymentVo> paymentData = paymentDao.getAllPaymentInfo();
		PaymentVo detectInfo = null;
		
		int i = 0;
		
		while (i < paymentData.size()) {
			
			detectInfo = paymentData.get(i);
			
			if (detectInfo.getPayment_st_id() == st_id) {
				break;
			}
			
			i++;
			
		}
		System.out.println(detectInfo);
		if (detectInfo == null) {
			
			if (paymentStat.getPayment_owner() == null || paymentStat.getPayment_owner().equals("")) {
				return false;
			}
			if (paymentStat.getPayment_cardBrand() == null || paymentStat.getPayment_cardBrand().equals("")) {
				return false;
			}
			if (paymentStat.getPayment_cardOption() == null) {
				return false;
			}
			if (paymentStat.getPayment_cardOption() == "personal-card" && (paymentStat.getPayment_businessNumber() != null || paymentStat.getPayment_ownerBirthday() == null)) {
				return false;
			}
			if (paymentStat.getPayment_cardOption() == "business-card" && (paymentStat.getPayment_ownerBirthday() != null || paymentStat.getPayment_businessNumber() == null)) {
				return false;
			}
			if (paymentStat.getPayment_cardNumber() == null || paymentStat.getPayment_cardNumber() == 0) {
				return false;
			}
			if (paymentStat.getPayment_cardCVC() == null || paymentStat.getPayment_cardCVC() == 0) {
				return false;
			}
			if (paymentStat.getPayment_dueMonth() == null || paymentStat.getPayment_dueYear() == null) {
				return false;
			}
			if (paymentStat.getPayment_cardPassword() == null || paymentStat.getPayment_cardPassword() == 0) {
				return false;
			}
			
			System.out.println(paymentStat);
			
			
		}
		
		return true;
	}

}
