package com.User;

public class AddDonor {
	
	private String name,fname,mname,mobile,gender,email,bldgrp,address;

	public AddDonor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AddDonor(String name, String fname, String mname, String mobile, String gender, String email, String bldgrp,
			String address) {
		super();
		this.name = name;
		this.fname = fname;
		this.mname = mname;
		this.mobile = mobile;
		this.gender = gender;
		this.email = email;
		this.bldgrp = bldgrp;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

}
