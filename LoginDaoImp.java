package web.dao;

/**
 * Author: jogesh
 * Description: It is a Dao implementation file that implements LoginDao.java(service) and gets the data from LoginModel.java(model) and 
 				performs the query when method is called
 * Date: 23/07/2023
 * project v -version 1.2
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import web.model.DashBoard;
import web.model.LoginModel;
import web.util.DatabaseUtil;

public class LoginDaoImp implements LoginDao {
	
		//Fields
		private Object result;
		private int a,b,c;
	
	public Object checkData(LoginModel lm) {
		
		
		//get the data from loginModel and store it in variables
		String userName = lm.getUsername();
		String password = lm.getPassword();
		
		System.out.println(userName+"\n"+password);
		
		


		//write a pre-defined query
		String query = "select*from login where user_name=? and password=?";
		
		try {
		
		//get database connection from DatabaseUtil class
		Connection con = DatabaseUtil.jdbcConnection();
		
		//checking whether given data is true or not
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, userName);
		ps.setString(2, password);
		
		DashBoard db = new DashBoard();
		db.setName(userName);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			
			//retrieve the total count of students and set it to a variable
			PreparedStatement ps1 = con.prepareStatement("select count(stud_id) from student");
			ResultSet x = ps1.executeQuery();
			if(x.next()) {
				 a = x.getInt(1);

			}
			
			//retrieve the total count of students from this year and set it to a variable
			PreparedStatement ps2 = con.prepareStatement("select count(*) from student  where year(date_of_joining) = year(curdate())");
			ResultSet y = ps2.executeQuery();
			if(y.next()) {
				 b = y.getInt(1);
			}
			
			//retrieve the total count of students from this year and this month and set it to a variable
			PreparedStatement ps3 = con.prepareStatement("select count(*) from student where year(date_of_joining) = year(curdate()) and month(date_of_joining) = month(curdate())");
			ResultSet z = ps3.executeQuery();
			if(z.next()) {
				 c = z.getInt(1);
			}
			
			
			db.setTotalStudents(a);
			db.setStudentsInYear(b);
			db.setStudentsInMonth(c);
			//store the resultset values in an int array
			result = db;

		}
		else {
			
			//if the credentials is wrong return message of wrong data which is the type of an array
			result = "wrong data";
		}
		
		} 
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		//based on the result returning result 
		return  result;
		
	}
	
	
		
	
}
