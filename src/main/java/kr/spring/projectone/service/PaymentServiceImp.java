package kr.spring.projectone.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.ClassDao;
import kr.spring.projectone.dao.PaymentDao;
import kr.spring.projectone.dao.PurchaseDao;
import kr.spring.projectone.dao.VipDao;
import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;
import kr.spring.projectone.vo.VipCodeListVo;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired
	private PaymentDao paymentDao;
	@Autowired
	private ClassDao classDao;
	@Autowired
	private PurchaseDao purchaseDao;
	@Autowired
	private VipDao vipDao;
	
	@Override
	public void getAllPaymentInfo(){
		paymentDao.getAllPaymentInfo();
	}
	
	
	@Override
	public PaymentVo getPaymentInfo(String st_id) {
		
		return paymentDao.getPaymentInfo(st_id);
	}

	


	@Override
	public boolean detectPaymentInfo(PaymentVo paymentStat, ClassVo classList, String st_id, String payment_cardBrand,
			String payment_cardOption, String payment_cardNumber, String payment_dueMonth, String payment_dueYear,
			String payment_cardCVC, String payment_cardPassword, String payment_ownerBirthday,
			String payment_businessNumber) {
	
		
		PaymentVo detectInfo = paymentDao.getPaymentInfo(st_id);
		
		if (detectInfo == null) { // 없으면 새로 작성
		
			paymentStat.setPayment_st_id(st_id);
			System.out.println(paymentStat); // 작성 내용 보여줌
			paymentDao.insertPaymentInfo(paymentStat);
			
		}
		
		System.out.println(detectInfo);
		
		if(detectInfo != null) { // 있으면 달라진 걸로 새로 수정
	
			
			if (payment_cardBrand == null || payment_cardBrand == "") {
				System.out.println("1");
				return false;
			}
			if (payment_cardOption == null || payment_cardOption == "") {
				System.out.println("2");
				return false;
			}
			if (payment_cardOption == "personal-card" && payment_businessNumber != null ) {
				
				return false;
			}
			if (payment_cardOption == "business-card" ) {
				System.out.println("4");
				System.out.println("3");
				try {
					long business = Long.parseLong(payment_businessNumber);
				} catch(Exception e){
					return false;
				}
				
			}
			if (payment_cardNumber == null || payment_cardNumber == "") {
				System.out.println("5");
				return false;
			}
			if (payment_cardCVC == null || payment_cardCVC == "") {
				System.out.println("6");
				return false;			}
			if (payment_dueMonth == null || payment_dueMonth == null) {
				System.out.println("7");
				return false;
			}
			if (payment_cardPassword == null || payment_cardPassword == "") {
				System.out.println("8");
				return false;
			}
			try { // 숫자로 입력안하면 false로 돌려버림
				System.out.println("9:"+payment_cardNumber);
				long num = Long.parseLong(payment_cardNumber); // 카드번호가
				int cvc = Integer.parseInt(payment_cardCVC);
				System.out.println("10");
				int birthday = Integer.parseInt(payment_ownerBirthday);
				System.out.println("11");
				
				System.out.println("12");
			}catch(Exception e) {
				System.out.println("13");
				return false;
			}
			
			detectInfo.setPayment_businessNumber(payment_businessNumber); 
			detectInfo.setPayment_cardBrand(payment_cardBrand); 
			detectInfo.setPayment_cardCVC(payment_cardCVC); 
			detectInfo.setPayment_cardNumber(payment_cardNumber); 
			detectInfo.setPayment_cardOption(payment_cardOption); 
			detectInfo.setPayment_cardPassword(payment_cardPassword); 
			detectInfo.setPayment_dueMonth(payment_dueMonth); 
			detectInfo.setPayment_dueYear(payment_dueYear); 
			
			if (payment_ownerBirthday != null) {
				detectInfo.setPayment_ownerBirthday(payment_ownerBirthday);
			}
			if (payment_businessNumber != null) {
				detectInfo.setPayment_businessNumber(payment_businessNumber);
			}
			
			System.out.println(detectInfo);
			
			paymentDao.updatePaymentInfo(detectInfo, st_id);
		}
		
		return true;
	}



	@Override
	public void inputHistory(PurchaseHistoryVo purchaseInfo, String code, String st_id) {
		
		String tempCode = "";
		
		// 대문자 A-Z 랜덤 알파벳 생성
	    for (int i = 0; i < 20; i++) {
	      
	    	char ch = (char) ((Math.random() * 26) + 65);
	    	tempCode += ch;
	      
	    }

	   
	    purchaseInfo.setPurchase_code(tempCode);
	    purchaseInfo.setPurchase_st_id(st_id);
	    
	    // 코드가 어디서 왔는지 확인하는 과정
	    
	    // 셋중 하나가 y로 변경되면 바로 반복문 탈출 / 사실 break가 있긴 하지만 혹시 모르니까...
	    
	    char classFound = 'n';
	    char vipFound = 'n';
	    char packageFound = 'n'; // 요건 잠시 냅둠. 아직 패키지 구현이 안된 상황이라...
	    
	    String vipDetect = null; // vip코드자체를 탐색하기 위한 변수
	    ArrayList<ClassVo>classList = classDao.getAllClass(); // 만약 코드가 클래스 코드에서 온거면 여기서 찾을 수 있게끔 동작
	    ArrayList<VipCodeListVo>vipCodeList = vipDao.getVipCode(st_id);
	    
	    
	    
	    while (classFound == 'n' && vipFound == 'n') {
	   
		    for (int i = 0 ; i < classList.size() ; i++) {
		    	
		    	System.out.println(classList.get(i));
		    	
		    	if (classList.get(i).getClass_code().equals(code)) {
		    		
		    		System.out.println(code);
		    		
		    		purchaseInfo.setPurchase_class_code(code);
		    		purchaseInfo.setPurchase_price(classList.get(i).getClass_price());
		    		
		    		int num = classList.get(i).getClass_monthlyPay();
		    		purchaseInfo.setPurchase_monthlyLeft(num-1);
		    		classFound = 'y';
		    		break;
		    	}	
		    	
		    }
		   
		    for (int i = 0 ; i < vipCodeList.size() ; i++) {
		    	
		    	vipDetect = vipCodeList.get(i).getVip_code();
		    	
		    	System.out.println(vipDetect);
		    	
		    	if (vipCodeList.get(i).getVip_code().equals(code)) {
		    		
		    		System.out.println(code);
		    		
		    		purchaseInfo.setPurchase_vip_code(code);
		    		// 여긴 vip 플랜 가격 명시 해야 되는 부분 (작업 예정) 
		    		
		    		purchaseInfo.setPurchase_monthlyLeft(11);
		    		vipFound = 'y';
		    		
		    		break;
		    	}
		    }
	    }
	   
	    System.out.println(purchaseInfo);
	    purchaseDao.inputHistory(purchaseInfo);
	
	}


	@Override
	public PurchaseHistoryVo searchPurchaseHistory(String st_id, String code) {
		
		return purchaseDao.searchPurchasehistory(st_id, code);
		
	}


}
