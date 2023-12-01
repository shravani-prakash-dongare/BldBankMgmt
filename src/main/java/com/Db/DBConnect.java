package com.Db;

import java.sql.*;

public class DBConnect {
	
		private static Connection conn;
			
		public static Connection getConn() 
		{
			
			try {
				
				if (conn == null) 
				{
					
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbankmanagement", "root", "shravani");
				
				}
				
			} catch (Exception e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			
			return conn;
			
		}
		
	}

