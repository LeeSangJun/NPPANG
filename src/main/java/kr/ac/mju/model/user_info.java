package kr.ac.mju.model;

public class user_info {
	int user_id;
	String name;
	String email;
	String password;
	String description;
	String text;
	String photo;

	public void setName(String name){this.name = name;}
	public String getName(){return name;}
 
	public int getUser_id() {	return user_id;	}
	public void setUser_id(int user_id) {	this.user_id = user_id;	}

	public String getEmail() {	return email;	}
	public void setEmail(String email) {	this.email = email;	}

	public String getPassword() {	return password;	}
	public void setPassword(String password) {	this.password = password;	}

	public String getDescription() {	return description;	}
	public void setDescription(String description) {	this.description = description;	}

	public String getText() {	return text;	}
	public void setText(String text) {	this.text = text;	}
	
	public String getPhoto() {	return photo;	}
	public void setPhoto(String photo) {	this.photo = photo;	}
}
