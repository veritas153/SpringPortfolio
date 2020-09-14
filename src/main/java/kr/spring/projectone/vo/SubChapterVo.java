package kr.spring.projectone.vo;

public class SubChapterVo {

	private int subChapter_priNum;
	private String subChapter_title;
	private Integer subChapter_number;
	private String subChapter_content;
	private Integer subChapter_mainChapter_priNum;
	
	
	public int getSubChapter_priNum() {
		return subChapter_priNum;
	}
	public void setSubChapter_priNum(int subChapter_priNum) {
		this.subChapter_priNum = subChapter_priNum;
	}
	public String getSubChapter_title() {
		return subChapter_title;
	}
	public void setSubChapter_title(String subChapter_title) {
		this.subChapter_title = subChapter_title;
	}
	public Integer getSubChapter_number() {
		return subChapter_number;
	}
	public void setSubChapter_number(Integer subChapter_number) {
		this.subChapter_number = subChapter_number;
	}
	public String getSubChapter_content() {
		return subChapter_content;
	}
	public void setSubChapter_content(String subChapter_content) {
		this.subChapter_content = subChapter_content;
	}
	public Integer getSubChapter_mainChapter_priNum() {
		return subChapter_mainChapter_priNum;
	}
	public void setSubChapter_mainChapter_priNum(Integer subChapter_mainChapter_priNum) {
		this.subChapter_mainChapter_priNum = subChapter_mainChapter_priNum;
	}
	
	@Override
	public String toString() {
		return "SubChapterVo [subChapter_priNum=" + subChapter_priNum + ", subChapter_title=" + subChapter_title
				+ ", subChapter_number=" + subChapter_number + ", subChapter_content=" + subChapter_content
				+ ", subChapter_mainChapter_priNum=" + subChapter_mainChapter_priNum + "]";
	}
	
	
	
	
	
}
