package sportsacademy.beans;

import java.sql.Date;

public class Member {
	
	private String member_id;
	private String password,name, email,phone,address,sports_name,plan_name;
	private Date date;
	public Member(String member_id, String password, String name, String email, String phone, String address,
			String sports_name, String plan_name, Date date) {
		super();
		this.member_id = member_id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.sports_name = sports_name;
		this.plan_name = plan_name;
		this.date = date;
	}
	
	//member_id, password, name, email, phone, address, sports_name, plan_name, date
	
	public Member(String member_id, String name, String email, String phone, String address, String sports_name,
			String plan_name) {
		super();
		this.member_id = member_id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.sports_name = sports_name;
		this.plan_name = plan_name;
	}



	public Member(String member_id, String name, String email, String phone, String address,
			String sports_name, String plan_name, Date date) {
		super();
		this.member_id = member_id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.sports_name = sports_name;
		this.plan_name = plan_name;
		this.date = date;
	}
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSports_name() {
		return sports_name;
	}
	public void setSports_name(String sports_name) {
		this.sports_name = sports_name;
	}
	public String getPlan_name() {
		return plan_name;
	}
	public void setPlan_name(String plan_name) {
		this.plan_name = plan_name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
