package kr.spring.projectone.vo;

import java.util.Date;

public class ServiceVo {

	private int service_priNum;
	private String service_title;
	private String servie_content;
	private String service_password;
	private Date service_date;
	private String service_type;
	private String serivce_st_id;
	private String service_class_code;
	private String service_vip_code;
	
	public int getService_priNum() {
		return service_priNum;
	}
	public void setService_priNum(int service_priNum) {
		this.service_priNum = service_priNum;
	}
	public String getService_title() {
		return service_title;
	}
	public void setService_title(String service_title) {
		this.service_title = service_title;
	}
	public String getServie_content() {
		return servie_content;
	}
	public void setServie_content(String servie_content) {
		this.servie_content = servie_content;
	}
	public String getService_password() {
		return service_password;
	}
	public void setService_password(String service_password) {
		this.service_password = service_password;
	}
	public Date getService_date() {
		return service_date;
	}
	public void setService_date(Date service_date) {
		this.service_date = service_date;
	}
	public String getService_type() {
		return service_type;
	}
	public void setService_type(String service_type) {
		this.service_type = service_type;
	}
	public String getSerivce_st_id() {
		return serivce_st_id;
	}
	public void setSerivce_st_id(String serivce_st_id) {
		this.serivce_st_id = serivce_st_id;
	}
	public String getService_class_code() {
		return service_class_code;
	}
	public void setService_class_code(String service_class_code) {
		this.service_class_code = service_class_code;
	}
	public String getService_vip_code() {
		return service_vip_code;
	}
	public void setService_vip_code(String service_vip_code) {
		this.service_vip_code = service_vip_code;
	}
	
	@Override
	public String toString() {
		return "ServiceVo [service_priNum=" + service_priNum + ", service_title=" + service_title + ", servie_content="
				+ servie_content + ", service_password=" + service_password + ", service_date=" + service_date
				+ ", service_type=" + service_type + ", serivce_st_id=" + serivce_st_id + ", service_class_code="
				+ service_class_code + ", service_vip_code=" + service_vip_code + "]";
	}
	
	
}
