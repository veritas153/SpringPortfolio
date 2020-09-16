package kr.spring.projectone.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class TemporaryClassVo {

	private String addClass_code;
	private String addClass_title;
	private String addClass_category;
	private String addClass_thumbIntro;
	private String addClass_image;
	private String addClass_introduction;
	private String addClass_creatorName;
	private int addClass_monthly;
	private Integer addClass_price;
	private int addClass_classWeek;
	private char addClass_hasPackage;
	private String addClass_setPackage;
	private String addClass_difficulty;
	private String addClass_creator;
	private Date addClass_submitDate;
	private char addClass_confirm;
	private String addClass_adminComment;
	private char addClass_finalSubmit;
	private Date addClass_openDate;
	private String addClass_st_id;
	
	
	
	public String getAddClass_code() {
		return addClass_code;
	}
	public void setAddClass_code(String addClass_code) {
		this.addClass_code = addClass_code;
	}
	public String getAddClass_title() {
		return addClass_title;
	}
	public void setAddClass_title(String addClass_title) {
		this.addClass_title = addClass_title;
	}
	public String getAddClass_category() {
		return addClass_category;
	}
	public void setAddClass_category(String addClass_category) {
		this.addClass_category = addClass_category;
	}
	public String getAddClass_thumbIntro() {
		return addClass_thumbIntro;
	}
	public void setAddClass_thumbIntro(String addClass_thumbIntro) {
		this.addClass_thumbIntro = addClass_thumbIntro;
	}
	public String getAddClass_image() {
		return addClass_image;
	}
	public void setAddClass_image(String addClass_image) {
		this.addClass_image = addClass_image;
	}
	public String getAddClass_introduction() {
		return addClass_introduction;
	}
	public void setAddClass_introduction(String addClass_introduction) {
		this.addClass_introduction = addClass_introduction;
	}
	public String getAddClass_creatorName() {
		return addClass_creatorName;
	}
	public void setAddClass_creatorName(String addClass_creatorName) {
		this.addClass_creatorName = addClass_creatorName;
	}
	public int getAddClass_monthly() {
		return addClass_monthly;
	}
	public void setAddClass_monthly(int addClass_monthly) {
		this.addClass_monthly = addClass_monthly;
	}
	public Integer getAddClass_price() {
		return addClass_price;
	}
	public void setAddClass_price(Integer addClass_price) {
		this.addClass_price = addClass_price;
	}
	public Integer getAddClass_classWeek() {
		return addClass_classWeek;
	}
	public void setAddClass_classWeek(Integer addClass_classWeek) {
		this.addClass_classWeek = addClass_classWeek;
	}
	public char getAddClass_hasPackage() {
		return addClass_hasPackage;
	}
	public void setAddClass_hasPackage(char addClass_hasPackage) {
		this.addClass_hasPackage = addClass_hasPackage;
	}
	public String getAddClass_setPackage() {
		return addClass_setPackage;
	}
	public void setAddClass_setPackage(String addClass_setPackage) {
		this.addClass_setPackage = addClass_setPackage;
	}
	public String getAddClass_difficulty() {
		return addClass_difficulty;
	}
	public void setAddClass_difficulty(String addClass_difficulty) {
		this.addClass_difficulty = addClass_difficulty;
	}
	public String getAddClass_creator() {
		return addClass_creator;
	}
	public void setAddClass_creator(String addClass_creator) {
		this.addClass_creator = addClass_creator;
	}
	public Date getAddClass_submitDate() {
		return addClass_submitDate;
	}
	public void setAddClass_submitDate(Date addClass_submitDate) {
		this.addClass_submitDate = addClass_submitDate;
	}
	public char getAddClass_confirm() {
		return addClass_confirm;
	}
	public void setAddClass_confirm(char addClass_confirm) {
		this.addClass_confirm = addClass_confirm;
	}
	public String getAddClass_adminComment() {
		return addClass_adminComment;
	}
	public void setAddClass_adminComment(String addClass_adminComment) {
		this.addClass_adminComment = addClass_adminComment;
	}
	public char getAddClass_finalSubmit() {
		return addClass_finalSubmit;
	}
	public void setAddClass_finalSubmit(char addClass_finalSubmit) {
		this.addClass_finalSubmit = addClass_finalSubmit;
	}
	public String getAddClass_openDate() {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd"); // DatePicker에서 받아오는 스트링 형태를 작성
		return transFormat.format(addClass_openDate);
	}
	public void setAddClass_openDate(Date addClass_openDate) {
		this.addClass_openDate = addClass_openDate;
	}
	public void setAddClass_openDate(String addClass_openDate)  {

		SimpleDateFormat beforeTransFormat = new SimpleDateFormat("yyyyMMdd"); // DatePicker에서 받아오는 스트링 형태를 작성
		
		SimpleDateFormat afterTransFormat = new SimpleDateFormat("yyyy-MM-dd"); // MYSQL에서 인식하는 형태로 작성
		
		java.util.Date tempDate = null; // 여기선 java.util.Date로 작성하지만, import는 java.sql.date로 불러와야 한다! 왜냐하면 java.util.date는 오라클과 연동되는 방식이 아니기 때문
		
		try {
			tempDate = beforeTransFormat.parse(addClass_openDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		String newFormat = afterTransFormat.format(tempDate);
		
		Date addClass_openDate2;
		try {
			addClass_openDate2 = afterTransFormat.parse(addClass_openDate);
			this.addClass_openDate = addClass_openDate2;
			System.out.println(addClass_openDate);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public String getAddClass_st_id() {
		return addClass_st_id;
	}
	public void setAddClass_st_id(String addClass_st_id) {
		this.addClass_st_id = addClass_st_id;
	}
	
	@Override
	public String toString() {
		return "TemporaryClassVo [addClass_code=" + addClass_code + ", addClass_title=" + addClass_title
				+ ", addClass_category=" + addClass_category + ", addClass_thumbIntro=" + addClass_thumbIntro
				+ ", addClass_image=" + addClass_image + ", addClass_introduction=" + addClass_introduction
				+ ", addClass_creatorName=" + addClass_creatorName + ", addClass_monthly=" + addClass_monthly
				+ ", addClass_price=" + addClass_price + ", addClass_classWeek=" + addClass_classWeek
				+ ", addClass_hasPackage=" + addClass_hasPackage + ", addClass_setPackage=" + addClass_setPackage
				+ ", addClass_difficulty=" + addClass_difficulty + ", addClass_creator=" + addClass_creator
				+ ", addClass_submitDate=" + addClass_submitDate + ", addClass_confirm=" + addClass_confirm
				+ ", addClass_adminComment=" + addClass_adminComment + ", addClass_finalSubmit=" + addClass_finalSubmit
				+ ", addClass_openDate=" + addClass_openDate + ", addClass_st_id=" + addClass_st_id + "]";
	}
	
	
	

	
}
