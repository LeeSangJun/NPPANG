package kr.ac.mju.model;

public class message_charge {
	private int msg_num;
	private int to_user;
	private int from_user;
	private String contents;
	private int billing_price;
	private int balance;
	private String date;
	private int moim_id;
	
	public int getMoim_id() {	return moim_id;	}
	public void setMoim_id(int moim_id) {	this.moim_id = moim_id;	}
	
	public int getMsg_num() {	return msg_num;	}
	public void setMsg_num(int msg_num) {	this.msg_num = msg_num;	}
	
	public int getTo_user() {	return to_user;	}
	public void setTo_user(int to_user) {	this.to_user = to_user;	}
	
	public int getFrom_user() {		return from_user;	}
	public void setFrom_user(int from_user) {		this.from_user = from_user;	}
	
	public String getContents() {		return contents;	}
	public void setContents(String contents) {		this.contents = contents;	}	
	
	public int getBilling_price() {		return billing_price;	}
	public void setBilling_price(int billing_price) {		this.billing_price = billing_price;	}
	
	public int getBalance() {		return balance;	}
	public void setBalance(int balance) {		this.balance = balance;	}
	
	public String getDate() {		return date;	}
	public void setDate(String date) {		this.date = date;	}
}
