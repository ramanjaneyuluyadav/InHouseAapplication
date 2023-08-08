package web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import web.model.DashBoard;
import web.util.DatabaseUtil;

/**
 * Author : jogesh 
 * Description: 
 * Date: 25/07/2022
 * project v -version 1.2
 */

public class DashBoardDao {

	public DashBoard showDashBoard() {
		 
		
		int a=0, b=0, c=0;
		
		DashBoard db = new DashBoard();
		
		//get database connection from DatabaseUtil class
		Connection con = DatabaseUtil.jdbcConnection();
		
		try {
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
		
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return db;
		
	}
}
