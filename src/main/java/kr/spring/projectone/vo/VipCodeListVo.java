package kr.spring.projectone.vo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Year;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.SimpleFormatter;

public class VipCodeListVo {
	
	private String vip_code;
	private Date vip_submitDate;
	private Date vip_dueDate;
	private String vip_st_id;
	
	public String getVip_code() {
		return vip_code;
	}
	public void setVip_code(String vip_code) {
		this.vip_code = vip_code;
	}
	public Date getVip_submitDate() {
		return vip_submitDate;
	}
	public void setVip_submitDate(Date vip_submitDate) {
		this.vip_submitDate = vip_submitDate;
	}
	public Date getVip_dueDate() {
		return vip_dueDate;
	}
	public void setVip_dueDate(Date vip_dueDate) {
		this.vip_dueDate = vip_dueDate;
	}
	public void setVip_dueDate(String vip_dueDate) {
				
		Calendar today = Calendar.getInstance();
		today.add(Calendar.YEAR, 1);
		
		Date dueDate = new Date(today.getTimeInMillis());
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	    vip_dueDate =  df.format(dueDate.getTime());
		Date result;
			try {
				result = df.parse(vip_dueDate);
				this.vip_dueDate = result;
			} catch(Exception e) {
				e.printStackTrace();
			}
	    
		System.out.println(vip_dueDate);
		
	
	}
	
	public String getVip_st_id() {
		return vip_st_id;
	}
	public void setVip_st_id(String vip_st_id) {
		this.vip_st_id = vip_st_id;
	}
	
	
	@Override
	public String toString() {
		return "VipCodeListVo [vip_code=" + vip_code + ", vip_submitDate=" + vip_submitDate + ", vip_dueDate="
				+ vip_dueDate + ", vip_st_id=" + vip_st_id + "]";
	}
	

	

}
