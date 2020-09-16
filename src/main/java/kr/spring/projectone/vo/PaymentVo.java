package kr.spring.projectone.vo;

public class PaymentVo {

	private int payment_priNum;
	private String payment_owner;
	private String payment_cardBrand;
	private Integer payment_cardNumber;
	private String payment_cardOption;
	private Integer payment_dueYear;
	private Integer payment_dueMonth;
	private Integer payment_cardCVC;
	private Integer payment_cardPassword;
	private Integer payment_ownerBirthday;
	private Integer payment_businessNumber;
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
	public Integer getPayment_cardNumber() {
		return payment_cardNumber;
	}
	public void setPayment_cardNumber(Integer payment_cardNumber) {
		this.payment_cardNumber = payment_cardNumber;
	}
	public String getPayment_cardOption() {
		return payment_cardOption;
	}
	public void setPayment_cardOption(String payment_cardOption) {
		this.payment_cardOption = payment_cardOption;
	}
	public Integer getPayment_dueYear() {
		return payment_dueYear;
	}
	public void setPayment_dueYear(Integer payment_dueYear) {
		this.payment_dueYear = payment_dueYear;
	}
	public Integer getPayment_dueMonth() {
		return payment_dueMonth;
	}
	public void setPayment_dueMonth(Integer payment_dueMonth) {
		this.payment_dueMonth = payment_dueMonth;
	}
	public Integer getPayment_cardCVC() {
		return payment_cardCVC;
	}
	public void setPayment_cardCVC(Integer payment_cardCVC) {
		this.payment_cardCVC = payment_cardCVC;
	}
	public Integer getPayment_cardPassword() {
		return payment_cardPassword;
	}
	public void setPayment_cardPassword(Integer payment_cardPassword) {
		this.payment_cardPassword = payment_cardPassword;
	}
	public Integer getPayment_ownerBirthday() {
		return payment_ownerBirthday;
	}
	public void setPayment_ownerBirthday(Integer payment_ownerBirthday) {
		this.payment_ownerBirthday = payment_ownerBirthday;
	}
	public Integer getPayment_businessNumber() {
		return payment_businessNumber;
	}
	public void setPayment_businessNumber(Integer payment_businessNumber) {
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
