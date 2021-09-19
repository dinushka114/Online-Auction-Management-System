package com.auctionsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
	private String dbUrl = "jdbc:mysql://localhost:3306/AuctionSystem";
	private String username = "root";
	private String password = "Abcde12345";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver) {
			try {
				Class.forName(dbDriver);
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
	}
	
	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl , username , password);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	public String insert(Member member) {
		loadDriver(dbDriver);
		String result = member.getFirstName() +  "User Registered Sucessfully";
		Connection con = getConnection();
		String sql = "insert into Users(first_name , last_name , username , email , type , password , phone) values (? , ? , ? , ? , ? , ? , ?)" ;
		 
		try {
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1 , member.getFirstName());
			st.setString(2 , member.getLastName());
			st.setString(3 , member.getUserName());
			st.setString(4 , member.getEmail());
			st.setString(5 , member.getUserType());
			st.setString(6 , member.getPassword());
			st.setString(7 , member.getPhoneNumber());
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
			
		}
		return result;
	}
}
