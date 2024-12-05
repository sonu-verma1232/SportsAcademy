package sportsacademy.beans;

public class SportPlan {
	
	private int planid;
	private String planname, duration, charge, facility;
	
	
	public SportPlan() {
		
	}


	public int getPlanid() {
		return planid;
	}


	public void setPlanid(int planid) {
		this.planid = planid;
	}


	public String getPlanname() {
		return planname;
	}


	public void setPlanname(String planname) {
		this.planname = planname;
	}


	public String getDuration() {
		return duration;
	}


	public void setDuration(String duration) {
		this.duration = duration;
	}


	public String getCharge() {
		return charge;
	}


	public void setCharge(String charge) {
		this.charge = charge;
	}


	public String getFacility() {
		return facility;
	}


	public void setFacility(String facility) {
		this.facility = facility;
	}
	
	

}
