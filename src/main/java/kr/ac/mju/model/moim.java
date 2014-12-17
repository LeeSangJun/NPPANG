package kr.ac.mju.model;

public class moim {
	private int moim_id;
	private String moim_name;
	private String category;
	private String photo;
	private int people;
	private String description;
	private int leader_id;


	public int getMoim_id(){return moim_id;}
	public void setMoim_id(int moim_id){this.moim_id = moim_id;}

	public String getMoim_name() {return moim_name;}
	public void setMoim_name(String moim_name){this.moim_name = moim_name;}

	public String getCategory() {return category;}
	public void setCategory(String category) {this.category = category;}

	public String getPhoto(){return photo;}
	public void setPhoto(String photo) {this.photo = photo;}

	public int getPeople() {return people;}
	public void setPeople(int people) {this.people = people;}

	public String getDescription() {return description;}
	public void setDescription(String description) {this.description = description;}

	public int getLeader_id() {return leader_id;}
	public void setLeader_id(int leader_id) {this.leader_id = leader_id;}
}
