package kr.spring.projectone.vo;

public class TemporaryMainChapterVo {

	private int conMainChapter_priNum;
	private String conMainChapter_title;
	private Integer[] conMainChapter_number;
	private String conMainChapter_addClass_code;
	
	public int getConMainChapter_priNum() {
		return conMainChapter_priNum;
	}
	public void setConMainChapter_priNum(int conMainChapter_priNum) {
		this.conMainChapter_priNum = conMainChapter_priNum;
	}
	public String getConMainChapter_title() {
		return conMainChapter_title;
	}
	public void setConMainChapter_title(String conMainChapter_title) {
		this.conMainChapter_title = conMainChapter_title;
	}
	public Integer[] getConMainChapter_number() {
		return conMainChapter_number;
	}
	public void setConMainChapter_number(Integer[] conMainChapter_number) {
		this.conMainChapter_number = conMainChapter_number;
	}
	public String getConMainChapter_addClass_code() {
		return conMainChapter_addClass_code;
	}
	public void setConMainChapter_addClass_code(String conMainChapter_addClass_code) {
		this.conMainChapter_addClass_code = conMainChapter_addClass_code;
	}
	
	@Override
	public String toString() {
		return "TemporaryMainChapterVo [conMainChapter_priNum=" + conMainChapter_priNum + ", conMainChapter_title="
				+ conMainChapter_title + ", conMainChapter_number=" + conMainChapter_number
				+ ", conMainChapter_addClass_code=" + conMainChapter_addClass_code + "]";
	}
	
	
	
}
