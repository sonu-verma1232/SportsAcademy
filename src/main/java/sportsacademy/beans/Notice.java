package sportsacademy.beans;

import java.sql.Date;

public class Notice {

	private int id;
    String content;
	Date date;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int id, String content, Date date) {
		super();
		this.id = id;
		this.content = content;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
