package kr.ac.mju.model;

public class financial_log {
	private int log_id;
	private int user_id;
	private int moim_id;
	private int money;
	private String date;
	private String description;
	
	public int getLog_id() {	return log_id;	}
	public void setLog_id(int log_id) {	this.log_id = log_id;	}
	
	public int getUser_id() {	return user_id;	}
	public void setUser_id(int user_id) {	this.user_id = user_id;	}
	
	public int getMoim_id() {	return moim_id;	}
	public void setMoim_id(int moim_id) {	this.moim_id = moim_id;	}
	
	public int getMoney() {	return money;	}
	public void setMoney(int money) {	this.money = money;	}
	
	public String getDate() {	return date;	}
	public void setDate(String date) {	this.date = date;	}
	
	public String getDescription() {	return description;	}
	public void setDescription(String description) {	this.description = description;	}
	
	
}
