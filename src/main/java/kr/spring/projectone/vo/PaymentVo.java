package kr.spring.projectone.vo;

public class PaymentVo {

	private int payment_priNum;
	private String payment_owner;
	private String payment_cardBrand;
	private int payment_cardNumber;
	private String payment_cardOption;
	private int payment_dueYear;
	private int payment_dueMonth;
	private int payment_cardCVC;
	private int payment_cardPassword;
	private int payment_ownerBirthday;
	private int payment_businessNumber;
	private String payment_st_id;
	
	public int getPayment_priNum() {
		return payment_priNum;
	}
	public void setPayment_priNum(int payment_priNum) {
		this.payment_priNum = payment_priNum;
	}
	public String getPayment_owner() {
		return payment_owner;
	}
	public void setPayment_owner(String payment_owner) {
		this.payment_owner = payment_owner;
	}
	public String getPayment_cardBrand() {
		return payment_cardBrand;
	}
	public void setPayment_cardBrand(String payment_cardBrand) {
		this.payment_cardBrand = payment_cardBrand;
	}
	public int getPayment_cardNumber() {
		return payment_cardNumber;
	}
	public void setPayment_cardNumber(int payment_cardNumber) {
		this.payment_cardNumber = payment_cardNumber;
	}
	public String getPayment_cardOption() {
		return payment_cardOption;
	}
	public void setPayment_cardOption(String payment_cardOption) {
		this.payment_cardOption = payment_cardOption;
	}
	public int getPayment_dueYear() {
		return payment_dueYear;
	}
	public void setPayment_dueYear(int payment_dueYear) {
		this.payment_dueYear = payment_dueYear;
	}
	public int getPayment_dueMonth() {
		return payment_dueMonth;
	}
	public void setPayment_dueMonth(int payment_dueMonth) {
		this.payment_dueMonth = payment_dueMonth;
	}
	public int getPayment_cardCVC() {
		return payment_cardCVC;
	}
	public void setPayment_cardCVC(int payment_cardCVC) {
		this.payment_cardCVC = payment_cardCVC;
	}
	public int getPayment_cardPassword() {
		return payment_cardPassword;
	}
	public void setPayment_cardPassword(int payment_cardPassword) {
		this.payment_cardPassword = payment_cardPassword;
	}
	public int getPayment_ownerBirthday() {
		return payment_ownerBirthday;
	}
	public void setPayment_ownerBirthday(int payment_ownerBirthday) {
		this.payment_ownerBirthday = payment_ownerBirthday;
	}
	public int getPayment_businessNumber() {
		return payment_businessNumber;
	}
	public void setPayment_businessNumber(int payment_businessNumber) {
		this.payment_businessNumber = payment_businessNumber;
	}
	public String getPayment_st_id() {
		return payment_st_id;
	}
	public void setPayment_st_id(String payment_st_id) {
		this.payment_st_id = payment_st_id;
	}
	
	@Override
	public String toString() {
		return "PaymentVo [payment_priNum=" + payment_priNum + ", payment_owner=" + payment_owner
				+ ", payment_cardBrand=" + payment_cardBrand + ", payment_cardNumber=" + payment_cardNumber
				+ ", payment_cardOption=" + payment_cardOption + ", payment_dueYear=" + payment_dueYear
				+ ", payment_dueMonth=" + payment_dueMonth + ", payment_cardCVC=" + payment_cardCVC
				+ ", payment_cardPassword=" + payment_cardPassword + ", payment_ownerBirthday=" + payment_ownerBirthday
				+ ", payment_businessNumber=" + payment_businessNumber + ", payment_st_id=" + payment_st_id + "]";
	}
	
	
}
