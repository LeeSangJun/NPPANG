package kr.ac.mju.model;

public class message_plain {
	private int msg_num;
	private int to_user;
	private int from_user;
	private String contents;
	private String date;
	
	public int getMsg_num() {	return msg_num;	}
	public void setMsg_num(int msg_num) {	this.msg_num = msg_num;	}
	
	public int getTo_user() {	return to_user;	}
	public void setTo_user(int to_user) {	this.to_user = to_user;	}
	
	public int getFrom_user() {		return from_user;	}
	public void setFrom_user(int from_user) {		this.from_user = from_user;	}
	
	public String getContents() {		return contents;	}
	public void setContents(String contents) {		this.contents = contents;	}	
	
	public String getDate() {		return date;	}
	public void setDate(String date) {		this.date = date;	}
	
}
