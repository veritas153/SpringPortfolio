package kr.spring.projectone.vo;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CurrentClassVo {

	private int currentClass_priNum;
	private String currentClass_class_title;
	private Date currentClass_startDate;
	private Date currentClass_dueDate;
	private String currentClass_st_id;
	private String currentClass_class_code;
	private String currentClass_vip_code;
	
	public int getCurrentClass_priNum() {
		return currentClass_priNum;
	}
	public void setCurrentClass_priNum(int currentClass_priNum) {
		this.currentClass_priNum = currentClass_priNum;
	}
	public String getCurrentClass_class_title() {
		return currentClass_class_title;
	}
	public void setCurrentClass_class_title(String currentClass_class_title) {
		this.currentClass_class_title = currentClass_class_title;
	}
	public Date getCurrentClass_startDate() {
		return currentClass_startDate;
	}
	public void setCurrentClass_startDate(Date currentClass_startDate) {
		this.currentClass_startDate = currentClass_startDate;
	}
	public Date getCurrentClass_dueDate() {
		return currentClass_dueDate;
	}
	public void setCurrentClass_dueDate(Date currentClass_dueDate) {
		this.currentClass_dueDate = currentClass_dueDate;
	}
	public void setCurrentClass_dueDate(String currentClass_dueDate, int i) {
		
		Calendar today = Calendar.getInstance();
		
		if (i == 1) {
			today.add(Calendar.WEEK_OF_YEAR, 4);
		}
		if (i == 3) {
			today.add(Calendar.WEEK_OF_YEAR, 12);
		}
		if (i == 5) {
			today.add(Calendar.WEEK_OF_YEAR, 20);
		}
		if (i == 6) {
			today.add(Calendar.WEEK_OF_YEAR, 25);
		}
		if (i == 12) {
			today.add(Calendar.YEAR, 1);
		}
		Date dueDate = new Date(today.getTimeInMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		currentClass_dueDate =  df.format(dueDate.getTime());
		Date result;
			try {
				result = df.parse(currentClass_dueDate);
				this.currentClass_dueDate = result;
			} catch(Exception e) {
				e.printStackTrace();
			}
		
	}
	public String getCurrentClass_st_id() {
		return currentClass_st_id;
	}
	public void setCurrentClass_st_id(String currentClass_st_id) {
		this.currentClass_st_id = currentClass_st_id;
	}
	public String getCurrentClass_class_code() {
		return currentClass_class_code;
	}
	public void setCurrentClass_class_code(String currentClass_class_code) {
		this.currentClass_class_code = currentClass_class_code;
	}
	public String getCurrentClass_vip_code() {
		return currentClass_vip_code;
	}
	public void setCurrentClass_vip_code(String currentClass_vip_code) {
		this.currentClass_vip_code = currentClass_vip_code;
	}
	
	@Override
	public String toString() {
		return "CurrentClassVo [currentClass_priNum=" + currentClass_priNum + ", currentClass_class_title="
				+ currentClass_class_title + ", currentClass_startDate=" + currentClass_startDate
				+ ", currentClass_dueDate=" + currentClass_dueDate + ", currentClass_st_id=" + currentClass_st_id
				+ ", currentClass_class_code=" + currentClass_class_code + ", currentClass_vip_code="
				+ currentClass_vip_code + "]";
	}
	

}
