package kr.spring.projectone.vo;

import java.util.Date;

public class PurchaseHistoryVo {

	private String purchase_code;
	private Date purchase_date;
	private int purchase_price;
	private int purchase_monthlyLeft;
	private String purchase_class_code;
	private String purchase_package_code;
	private String purchase_st_id;
	public String getPurchase_code() {
		return purchase_code;
	}
	public void setPurchase_code(String purchase_code) {
		this.purchase_code = purchase_code;
	}
	public Date getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Date purchase_date) {
		this.purchase_date = purchase_date;
	}
	public int getPurchase_price() {
		return purchase_price;
	}
	public void setPurchase_price(int purchase_price) {
		this.purchase_price = purchase_price;
	}
	public int getPurchase_monthlyLeft() {
		return purchase_monthlyLeft;
	}
	public void setPurchase_monthlyLeft(int purchase_monthlyLeft) {
		this.purchase_monthlyLeft = purchase_monthlyLeft;
	}
	public String getPurchase_class_code() {
		return purchase_class_code;
	}
	public void setPurchase_class_code(String purchase_class_code) {
		this.purchase_class_code = purchase_class_code;
	}
	public String getPurchase_package_code() {
		return purchase_package_code;
	}
	public void setPurchase_package_code(String purchase_package_code) {
		this.purchase_package_code = purchase_package_code;
	}
	public String getPurchase_st_id() {
		return purchase_st_id;
	}
	public void setPurchase_st_id(String purchase_st_id) {
		this.purchase_st_id = purchase_st_id;
	}
	
	@Override
	public String toString() {
		return "PurchaseHistoryVo [purchase_code=" + purchase_code + ", purchase_date=" + purchase_date
				+ ", purchase_price=" + purchase_price + ", purchase_monthlyLeft=" + purchase_monthlyLeft
				+ ", purchase_class_code=" + purchase_class_code + ", purchase_package_code=" + purchase_package_code
				+ ", purchase_st_id=" + purchase_st_id + "]";
	}
	
	
	
}
