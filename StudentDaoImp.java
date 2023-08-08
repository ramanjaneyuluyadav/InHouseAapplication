package web.dao;

/**
 * Author: jogesh
 * Description: It is Dao implementation file that implements the StudentDao.java(service) and gets the data from the Course.java(model) and Student.java(model) and inserts the
 				student details in the student table and student_course table when the method is called
 * Date:24/07/2023
 * project v -version 1.2
 */

import java.sql.Connection;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import web.model.Course;
import web.model.Student;
import web.util.DatabaseUtil;

public class StudentDaoImp implements StudentDao {
	
	//implementing studentRegister() in StudentDao service
	public Student studentRegister(Student sm , Course cs) {
		
		int sid=0;
		
		String course = cs.getCourseName();
		
		
		
		Student so = new Student();
		
		//pre-defining queries
		String query="insert into student (first_name,last_name,gender,father_name,qualification,year_of_passedout,email,mobile,alter_mobile,address,date_of_joining,counsellor,remarks)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String query1 = "insert into student_course (stud_id,course_name) value(?,?)";
		try {
			
			//converting data from String type to Sql date by using SimpleDateFormat
			String date = sm.getJoinDate();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date parsedDate = dateFormat.parse(date);
			java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
			
			//getting connection from DatebaseUtil class
			Connection con = DatabaseUtil.jdbcConnection();
			
			//executing query and getting generated keys and inserting data into student table
			PreparedStatement ps = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
			
			//setting data to preparedStatement directly using get methods of Student model
			ps.setString(1, sm.getFirstName());
			ps.setString(2, sm.getLastName());
			ps.setString(3, sm.getGender());
			ps.setString(4, sm.getFatherName());
			ps.setString(5,sm.getQualification() );
			ps.setString(6,sm.getYearOfPass() );
			ps.setString(7,sm.getEmail() );
			ps.setLong(8,sm.getNumber() );
			ps.setLong(9,sm.getSecondaryNumber() );
			ps.setString(10,sm.getAddress() );
			ps.setDate(11, sqlDate);
			ps.setString(12, sm.getCounceller());
			ps.setString(13, sm.getRemarks());
			
			int n = ps.executeUpdate();
			
			
			//getting studentId via generatedKeys
			ResultSet gk = ps.getGeneratedKeys();
			while(gk.next()) {
				sid=gk.getInt(1);
			}
			so.setStudentId(sid);
		
			
			//inserting data into student-course table
			PreparedStatement ps1 = con.prepareStatement(query1);
			ps1.setInt(1, sid);
			ps1.setString(2, course);
			
			int x = ps1.executeUpdate();
			
			
			
			
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		//returning generated studentId
		return so;
	}
	
	public Course getFeeDetails(Course c) {
		
		String course = c.getCourseName();
		
		
		Course cObj = new Course();
		
		String query = "select fee from course where course_name=?";
		
		Connection con = DatabaseUtil.jdbcConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, course);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				cObj.setFee(rs.getInt("fee"));
			}
			
			
		} 
		catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return cObj;
	}

}
