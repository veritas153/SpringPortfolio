package kr.spring.projectone.vo;

import java.util.Date;

public class ClassHistoryVo {
	
	private int classHistory_priNum;
	private char classHistory_isDone;
	private Date classHistory_finishDate;
	private String classHistory_st_id;
	private int classHistory_subChapter_priNum;
	
	public int getClassHistory_priNum() {
		return classHistory_priNum;
	}
	public void setClassHistory_priNum(int classHistory_priNum) {
		this.classHistory_priNum = classHistory_priNum;
	}
	public char getClassHistory_isDone() {
		return classHistory_isDone;
	}
	public void setClassHistory_isDone(char classHistory_isDone) {
		this.classHistory_isDone = classHistory_isDone;
	}
	public Date getClassHistory_finishDate() {
		return classHistory_finishDate;
	}
	public void setClassHistory_finishDate(Date classHistory_finishDate) {
		this.classHistory_finishDate = classHistory_finishDate;
	}
	public String getClassHistory_st_id() {
		return classHistory_st_id;
	}
	public void setClassHistory_st_id(String classHistory_st_id) {
		this.classHistory_st_id = classHistory_st_id;
	}
	public int getClassHistory_subChapter_priNum() {
		return classHistory_subChapter_priNum;
	}
	public void setClassHistory_subChapter_priNum(int classHistory_subChapter_priNum) {
		this.classHistory_subChapter_priNum = classHistory_subChapter_priNum;
	}
	
	
	@Override
	public String toString() {
		return "ClassHistoryVo [classHistory_priNum=" + classHistory_priNum + ", classHistory_isDone="
				+ classHistory_isDone + ", classHistory_finishDate=" + classHistory_finishDate + ", classHistory_st_id="
				+ classHistory_st_id + ", classHistory_subChapter_priNum=" + classHistory_subChapter_priNum + "]";
	}

	
	
}
