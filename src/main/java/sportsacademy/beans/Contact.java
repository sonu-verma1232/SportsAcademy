package sportsacademy.beans;

public class Contact {

	private int id;
	private String name,email,phone, question;
	

	public Contact(int id, String name, String email, String phone, String question) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.question = question;
	}
	
    public Contact() {
		
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	
}
