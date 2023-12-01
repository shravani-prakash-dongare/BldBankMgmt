package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.User.AddDonor;


public class AddDonorDAO {
	
	
	private Connection conn;
	public AddDonorDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addblddonor(AddDonor ad) {
		boolean f=false;
		
		try {
			String query="insert into donor(name,fname,mname,mobileno,gender,email,bldgrp,address) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, ad.getName());
			ps.setString(2, ad.getFname());
			ps.setString(3, ad.getMname());
			ps.setString(4, ad.getMobile());
			ps.setString(5, ad.getGender());
			ps.setString(6, ad.getEmail());
			ps.setString(7, ad.getBldgrp());
			ps.setString(8, ad.getAddress());
			int i=ps.executeUpdate();
			
			if (i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
}
