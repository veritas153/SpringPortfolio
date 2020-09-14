package kr.spring.projectone.vo;

public class MainChapterVo {

	private int mainChapter_priNum;
	private String mainChapter_title;
	private Integer mainChapter_number;
	private String mainChapter_class_code;
	private int mainChapter_countSubNum;
	
	public int getMainChapter_priNum() {
		return mainChapter_priNum;
	}
	public void setMainChapter_priNum(int mainChapter_priNum) {
		this.mainChapter_priNum = mainChapter_priNum;
	}
	public String getMainChapter_title() {
		return mainChapter_title;
	}
	public void setMainChapter_title(String mainChapter_title) {
		this.mainChapter_title = mainChapter_title;
	}
	public Integer getMainChapter_number() {
		return mainChapter_number;
	}
	public void setMainChapter_number(Integer mainChapter_number) {
		this.mainChapter_number = mainChapter_number;
	}
	public String getMainChapter_class_code() {
		return mainChapter_class_code;
	}
	public void setMainChapter_class_code(String mainChapter_class_code) {
		this.mainChapter_class_code = mainChapter_class_code;
	}
	public int getMainChapter_countSubNum() {
		return mainChapter_countSubNum;
	}
	public void setMainChapter_countSubNum(int mainChapter_countSubNum) {
		this.mainChapter_countSubNum = mainChapter_countSubNum;
	}
	
	@Override
	public String toString() {
		return "MainChapterVo [mainChapter_priNum=" + mainChapter_priNum + ", mainChapter_title=" + mainChapter_title
				+ ", mainChapter_number=" + mainChapter_number + ", mainChapter_class_code=" + mainChapter_class_code
				+ ", mainChapter_countSubNum=" + mainChapter_countSubNum + "]";
	}
	
	
}
