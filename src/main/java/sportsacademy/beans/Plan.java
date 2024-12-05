package sportsacademy.beans;

public class Plan {
	
	
	public Plan() {
		super();
		// TODO Auto-generated constructor stub
	}
	String planName,charge,duration,description;
	
	public Plan(String planName, String charge, String duration, String description) {
		super();
		this.planName = planName;
		this.charge = charge;
		this.duration = duration;
		this.description = description;
	}

	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
