package com.rentcheckgo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;



 
@Entity
@Table(name = "USERS")
public class User {
    
	public int getId() {
		return id;
	}
	
    public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="user_seq")
	@SequenceGenerator(
		name="user_seq",
		sequenceName="RCGADMIN.USER_SEQ",
		allocationSize=1
	)
	private int id;
	
	@Column(name="FIRST_NAME")
    private String firstName;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name="LAST_NAME")
    private String lastName;
	
	
	@Column(name="PASSWORD")
    private String password;
	
	@Column(name="EMAIL")
    private String email;
	
	
 
    // getters and setters are removed for brevity
 
}