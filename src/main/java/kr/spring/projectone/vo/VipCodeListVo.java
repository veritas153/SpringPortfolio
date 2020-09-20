package kr.spring.projectone.vo;

import java.util.Date;

public class VipCodeListVo {
	
	private String vip_code;
	private Date vip_dueDate;
	private String vip_purchase_code;
	private String vip_st_id;
	
	public String getVip_code() {
		return vip_code;
	}
	public void setVip_code(String vip_code) {
		this.vip_code = vip_code;
	}
	public Date getVip_dueDate() {
		return vip_dueDate;
	}
	public void setVip_dueDate(Date vip_dueDate) {
		this.vip_dueDate = vip_dueDate;
	}
	public String getVip_purchase_code() {
		return vip_purchase_code;
	}
	public void setVip_purchase_code(String vip_purchase_code) {
		this.vip_purchase_code = vip_purchase_code;
	}
	public String getVip_st_id() {
		return vip_st_id;
	}
	public void setVip_st_id(String vip_st_id) {
		this.vip_st_id = vip_st_id;
	}
	
	@Override
	public String toString() {
		return "VipCodeListVo [vip_code=" + vip_code + ", vip_dueDate=" + vip_dueDate + ", vip_purchase_code="
				+ vip_purchase_code + ", vip_st_id=" + vip_st_id + "]";
	}

	
	

}
