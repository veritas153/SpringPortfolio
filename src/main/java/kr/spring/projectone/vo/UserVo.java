package kr.spring.projectone.vo;

import java.util.Date;

public class UserVo {
	
	private String st_id;
	private String st_password;
	private String st_name;
	private String st_phoneNumber;
	private Date st_joinDate;
	private String st_email;
	private String st_vip;
	private Date st_vipDue;
	private String st_value;
	
	
	public String getSt_id() {
		return st_id;
	}
	public void setSt_id(String st_id) {
		this.st_id = st_id;
	}
	public String getSt_password() {
		return st_password;
	}
	public void setSt_password(String st_password) {
		this.st_password = st_password;
	}
	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	public String getSt_phoneNumber() {
		return st_phoneNumber;
	}
	public void setSt_phoneNumber(String st_phoneNumber) {
		this.st_phoneNumber = st_phoneNumber;
	}
	public Date getSt_joinDate() {
		return st_joinDate;
	}
	public void setSt_joinDate(Date st_joinDate) {
		this.st_joinDate = st_joinDate;
	}
	public String getSt_email() {
		return st_email;
	}
	public void setSt_email(String st_email) {
		this.st_email = st_email;
	}
	public String getSt_vip() {
		return st_vip;
	}
	public void setSt_vip(String st_vip) {
		this.st_vip = st_vip;
	}
	public Date getSt_vipDue() {
		return st_vipDue;
	}
	public void setSt_vipDue(Date st_vipDue) {
		this.st_vipDue = st_vipDue;
	}
	public String getSt_value() {
		return st_value;
	}
	public void setSt_value(String st_value) {
		this.st_value = st_value;
	}
	
	@Override
	public String toString() {
		return "UserVo [st_id=" + st_id + ", st_password=" + st_password + ", st_name=" + st_name + ", st_phoneNumber="
				+ st_phoneNumber + ", st_joinDate=" + st_joinDate + ", st_email=" + st_email + ", st_vip=" + st_vip
				+ ", st_vipDue=" + st_vipDue + ", st_value=" + st_value + "]";
	}
	
	
	
	
}
