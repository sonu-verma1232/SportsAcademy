package sportsacademy.beans;

import java.sql.Date;

public class FeedBack {
	
	private int id;
	private String name, email, rating,remark;
	private Date date;
	
	public FeedBack(int id, String name, String email, String rating, String remark, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.rating = rating;
		this.remark = remark;
		this.date = date;
	}
	
    public FeedBack() {
		
	}


	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	
	
	

}
