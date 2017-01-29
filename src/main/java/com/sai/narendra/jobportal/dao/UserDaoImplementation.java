package com.sai.narendra.jobportal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.sai.narendra.jobportal.model.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class UserDaoImplementation implements UserDao
{
	 private DataSource dataSource;
	 
	 public void setDataSource(DataSource dataSource)
	 {
		 this.dataSource = dataSource;
	 }
	 
	 public void insert(String email, String password)
	 {
		 User user = new User("email", "password");
		 
		String sql = "INSERT INTO USER " + "(email, password) VALUES (?, ?)";
		Connection conn = null;
		
		try
		{
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			ps.executeUpdate();
			ps.close();
		}
		catch(SQLException e)
		{
			throw new RuntimeException(e);
		}
		
		finally
		{
			if(conn != null)
			{
				try
				{
					conn.close();
				}
				catch(SQLException e)
				{
					
				}
			}
		}
	 }
}
