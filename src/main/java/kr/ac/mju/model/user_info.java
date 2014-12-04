package kr.ac.mju.model;

public class user_info {
	private int user_id;
	private String name;
	private String email;
	private String password;
	private String description;
	private String photo;

	public int getUser_id() {return user_id;}
	public void setUser_id(int user_id){this.user_id = user_id;}

	public String getName(){return name;}
	public void setName(String name){this.name = name;}

	public String getEmail(){return email;}
	public void setEmail(String email){this.email = email;}

	public String getPassword(){return password;}
	public void setPassword(String password){this.password = password;}

	public String getDescription(){return description;}
	public void setDescription(String description){this.description = description;}

	public String getPhoto(){return photo;}
	public void setPhoto(String photo){this.photo = photo;}

}
