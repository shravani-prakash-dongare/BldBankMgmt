package com.User;

public class UserDetails {
	private String name,email,bldgrp;
	private String mobileno;
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
		
	}
	public UserDetails(String name, String email, String bldgrp, String mobileno) {
		super();
		this.name = name;
		this.email = email;
		this.bldgrp = bldgrp;
		this.mobileno = mobileno;
	}
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
	public String getBldgrp() {
		return bldgrp;
	}
	public void setBldgrp(String bldgrp) {
		this.bldgrp = bldgrp;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobile) {
		this.mobileno = mobile;
	}
	

}
