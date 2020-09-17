package kr.spring.projectone.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.ClassDao;
import kr.spring.projectone.dao.PaymentDao;
import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired
	private PaymentDao paymentDao;
	@Autowired
	private ClassDao classDao;
	
	@Override
	public void getAllPaymentInfo(){
		paymentDao.getAllPaymentInfo();
	}
	
	
	@Override
	public ArrayList<PaymentVo> getPaymentInfo(String st_id) {
		
		return paymentDao.getPaymentInfo(st_id);
	}

	


	@Override
	public boolean detectPaymentInfo(PaymentVo paymentStat, ClassVo classList, String st_id, String payment_cardBrand,
			String payment_cardOption, String payment_cardNumber, String payment_dueMonth, String payment_dueYear,
			String payment_cardCVC, String payment_cardPassword, String payment_ownerBirthday,
			String payment_businessNumber) {
	
		ArrayList<PaymentVo> paymentData = paymentDao.getAllPaymentInfo();
		PaymentVo detectInfo = null;
		
		int i = 0;
		
		while (i < paymentData.size()) { // 결제 내역이 있는지 검사
			
			detectInfo = paymentData.get(i);
			
			if (detectInfo.getPayment_st_id() == st_id) {
				break;
			}
			
			i++;
			
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
		try { // 숫자로 입력안하면 false로 돌려버림
			int num = Integer.parseInt(paymentStat.getPayment_cardNumber());
			int cvc = Integer.parseInt(paymentStat.getPayment_cardCVC());
			int birthday = Integer.parseInt(paymentStat.getPayment_ownerBirthday());
			int business = Integer.parseInt(paymentStat.getPayment_businessNumber());
		}catch(Exception e) {
			return false;
		}
		if (paymentStat.getPayment_cardNumber() == null || paymentStat.getPayment_cardNumber().equals("")) {
			return false;
		}
		if (paymentStat.getPayment_cardCVC() == null || paymentStat.getPayment_cardCVC().equals("")) {
			return false;			}
		if (paymentStat.getPayment_dueMonth() == null || paymentStat.getPayment_dueYear() == null) {
			return false;
		}
		if (paymentStat.getPayment_cardPassword() == null || paymentStat.getPayment_cardPassword().equals("")) {
			return false;
		}
		
		
		if (detectInfo == null) { // 없으면 새로 작성
			paymentStat.setPayment_st_id(st_id);
			System.out.println(paymentStat); // 작성 내용 보여줌
			paymentDao.insertPaymentInfo(paymentStat);
			
		}
		
		if(detectInfo != null) { // 있으면 달라진 걸로 새로 수정
			
			paymentStat.setPayment_businessNumber(payment_businessNumber);
			paymentStat.setPayment_cardBrand(payment_cardBrand);
			paymentStat.setPayment_cardCVC(payment_cardCVC);
			paymentStat.setPayment_cardNumber(payment_cardNumber);
			paymentStat.setPayment_cardOption(payment_cardOption);
			paymentStat.setPayment_cardPassword(payment_cardPassword);
			paymentStat.setPayment_dueMonth(payment_dueMonth);
			paymentStat.setPayment_dueYear(payment_dueYear);
			paymentStat.setPayment_ownerBirthday(payment_ownerBirthday);
			
			paymentDao.updatePaymentInfo(paymentStat, st_id);
		}
		
		return true;
	}



	@Override
	public String inputHistory(String code, String st_id) {
		
		String tempCode = "";
		
		// 대문자 A-Z 랜덤 알파벳 생성
	    for (int i = 0; i < 20; i++) {
	      
	    	char ch = (char) ((Math.random() * 26) + 65);
	    	tempCode += ch;
	      
	    }

	    PurchaseHistoryVo historyInfo = null;
	    
	    historyInfo.setPurchase_code(tempCode);
	    historyInfo.setPurchase_st_id(st_id);
	    
	    // 코드가 어디서 왔는지 확인하는 과정

	    ArrayList<ClassVo>classList = classDao.getAllClass(); // 만약 코드가 클래스 코드에서 온거면 여기서 찾을 수 있게끔 동작
	    for (int i = 0 ; i < classList.size() ; i++) {
	    	
	    	if (classList.get(i).getClass_code().equals(code)) {
	    		historyInfo.setPurchase_class_code(code);
	    		historyInfo.setPurchase_price(classList.get(i).getClass_price());
	    		
	    		int num = classList.get(i).getClass_monthlyPay();
	    		historyInfo.setPurchase_monthlyLeft(num-1);
	    		
	    		break;
	    	}
	    	
	    }
	    // VIP플랜, 패키지 코드 여부는 해당 VO가 구현된 뒤에 진행할 예정
	 
	    paymentDao.inputHistory(historyInfo);
		return tempCode;
	}


}
