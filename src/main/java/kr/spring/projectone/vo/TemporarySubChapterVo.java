package kr.spring.projectone.vo;

public class TemporarySubChapterVo {
	
	private int conSubChapter_priNum;
	private String conSubChapter_title;
	private Integer conSubChapter_number;
	private String conSubChapter_content;
	private Integer conSubChapter_conMainChapter_priNum;
	public int getConSubChapter_priNum() {
		return conSubChapter_priNum;
	}
	public void setConSubChapter_priNum(int conSubChapter_priNum) {
		this.conSubChapter_priNum = conSubChapter_priNum;
	}
	public String getConSubChapter_title() {
		return conSubChapter_title;
	}
	public void setConSubChapter_title(String conSubChapter_title) {
		this.conSubChapter_title = conSubChapter_title;
	}
	public Integer getConSubChapter_number() {
		return conSubChapter_number;
	}
	public void setConSubChapter_number(Integer conSubChapter_number) {
		this.conSubChapter_number = conSubChapter_number;
	}
	public String getConSubChapter_content() {
		return conSubChapter_content;
	}
	public void setConSubChapter_content(String conSubChapter_content) {
		this.conSubChapter_content = conSubChapter_content;
	}
	public Integer getConSubChapter_conMainChapter_priNum() {
		return conSubChapter_conMainChapter_priNum;
	}
	public void setConSubChapter_conMainChapter_priNum(Integer conSubChapter_conMainChapter_priNum) {
		this.conSubChapter_conMainChapter_priNum = conSubChapter_conMainChapter_priNum;
	}
	
	@Override
	public String toString() {
		return "TemporarySubChapterVo [conSubChapter_priNum=" + conSubChapter_priNum + ", conSubChapter_title="
				+ conSubChapter_title + ", conSubChapter_number=" + conSubChapter_number + ", conSubChapter_content="
				+ conSubChapter_content + ", conSubChapter_conMainChapter_priNum=" + conSubChapter_conMainChapter_priNum
				+ "]";
	}
	
	
	
	
}
