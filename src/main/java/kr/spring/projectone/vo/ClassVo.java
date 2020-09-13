package kr.spring.projectone.vo;

import java.sql.Date;

public class ClassVo {

	private String class_code;
	private String class_title;
	private String class_category;
	private String class_thumbIntro;
	private String class_image;
	private String class_introduction;
	private int class_monthlyPay;
	private int class_price;
	private char class_hasPackage;
	private String class_packageSet;
	private String class_difficulty;
	private String class_creatorDescription;
	private int class_studyWeek;
	private Date class_openDate;
	private String class_st_id;
	private String class_package_code;
	
	
	public String getClass_code() {
		return class_code;
	}
	public void setClass_code(String class_code) {
		this.class_code = class_code;
	}
	public String getClass_title() {
		return class_title;
	}
	public void setClass_title(String class_title) {
		this.class_title = class_title;
	}
	public String getClass_category() {
		return class_category;
	}
	public void setClass_category(String class_category) {
		this.class_category = class_category;
	}
	public String getClass_thumbIntro() {
		return class_thumbIntro;
	}
	public void setClass_thumbIntro(String class_thumbIntro) {
		this.class_thumbIntro = class_thumbIntro;
	}
	public String getClass_image() {
		return class_image;
	}
	public void setClass_image(String class_image) {
		this.class_image = class_image;
	}
	public String getClass_introduction() {
		return class_introduction;
	}
	public void setClass_introduction(String class_introduction) {
		this.class_introduction = class_introduction;
	}
	public int getClass_monthlyPay() {
		return class_monthlyPay;
	}
	public void setClass_monthlyPay(int class_monthlyPay) {
		this.class_monthlyPay = class_monthlyPay;
	}
	public int getClass_price() {
		return class_price;
	}
	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}
	public char getClass_hasPackage() {
		return class_hasPackage;
	}
	public void setClass_hasPackage(char class_hasPackage) {
		this.class_hasPackage = class_hasPackage;
	}
	public String getClass_packageSet() {
		return class_packageSet;
	}
	public void setClass_packageSet(String class_packageSet) {
		this.class_packageSet = class_packageSet;
	}
	public String getClass_difficulty() {
		return class_difficulty;
	}
	public void setClass_difficulty(String class_difficulty) {
		this.class_difficulty = class_difficulty;
	}
	public String getClass_creatorDescription() {
		return class_creatorDescription;
	}
	public void setClass_creatorDescription(String class_creatorDescription) {
		this.class_creatorDescription = class_creatorDescription;
	}
	public int getClass_studyWeek() {
		return class_studyWeek;
	}
	public void setClass_studyWeek(int class_studyWeek) {
		this.class_studyWeek = class_studyWeek;
	}
	public Date getClass_openDate() {
		return class_openDate;
	}
	public void setClass_openDate(Date class_openDate) {
		this.class_openDate = class_openDate;
	}
	public String getClass_st_id() {
		return class_st_id;
	}
	public void setClass_st_id(String class_st_id) {
		this.class_st_id = class_st_id;
	}
	
	public String getClass_package_code() {
		return class_package_code;
	}
	public void setClass_package_code(String class_package_code) {
		this.class_package_code = class_package_code;
	}
	
	@Override
	public String toString() {
		return "ClassVo [class_code=" + class_code + ", class_title=" + class_title + ", class_category="
				+ class_category + ", class_thumbIntro=" + class_thumbIntro + ", class_image=" + class_image
				+ ", class_introduction=" + class_introduction + ", class_monthlyPay=" + class_monthlyPay
				+ ", class_price=" + class_price + ", class_hasPackage=" + class_hasPackage + ", class_packageSet="
				+ class_packageSet + ", class_difficulty=" + class_difficulty + ", class_creatorDescription="
				+ class_creatorDescription + ", class_studyWeek=" + class_studyWeek + ", class_openDate="
				+ class_openDate + ", class_st_id=" + class_st_id + "]";
	}
	
	
	
	
	
}
