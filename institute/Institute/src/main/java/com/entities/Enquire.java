package com.entities;

import javax.persistence.*;

@Entity
public class Enquire {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String year;
	private String course;
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
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
	public Enquire(String name, String email, String year, String course) {
		super();
		this.name = name;
		this.email = email;
		this.year = year;
		this.course = course;
	}
	
	public Enquire() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Enquire [name=" + name + ", email=" + email + ", year=" + year + ", course=" + course + "]";
	}
	
	
	
}
