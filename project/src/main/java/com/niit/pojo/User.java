package com.niit.pojo;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

@Entity
public class User {

	@Id // Makes the id field as Primary Key
	@GeneratedValue(strategy = GenerationType.AUTO) // Automatically generates
													// value for the primary key
													// field.
	private int id;
	@NotBlank(message="Please enter your firstname!")
	private String fname;
	@NotBlank(message="Please enter your lastname!")
	private String lname;
	@NotBlank(message="Please enter your username!")
	private String username;
	@Min(value=4,message="password should be min 4 char atleast!")
	private String password;
	@OneToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	private List <Address> addresses;
	@NotBlank(message="Please enter your email!")
	@Email
	private String email;
	@NotBlank(message="Please enter your phonenumber!")
	private String phonenumber;
	private boolean enabled;
	private String role;

	/*
	 * Getters and Setters
	 */
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}
	  



}


	
