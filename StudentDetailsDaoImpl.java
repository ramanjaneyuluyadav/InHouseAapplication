package web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import web.model.Student;
import web.util.DatabaseUtil;

public class StudentDetailsDaoImpl implements StudentDetailsDao{
	public List<Student> getStudent(){
		//Creating a new arraylist
		List<Student> al = new ArrayList<Student>();
		//pre-defined query and getting connection from DatebaseUtil class
		String query1 = "select * from student order by stud_id desc";
		Connection con = DatabaseUtil.jdbcConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(query1);
			ResultSet rs1 = ps.executeQuery();
			while(rs1.next()) {
				//creating a new instance of student , setting data from ResultSet and adding to a ArrayList
				Student s = new Student();
				
				s.setStudentId(rs1.getInt("stud_id"));
				s.setFirstName(rs1.getString("first_name"));
				s.setLastName(rs1.getString("last_name"));
				s.setFatherName(rs1.getString("father_name"));
				s.setQualification(rs1.getString("qualification"));
				s.setYearOfPass(rs1.getString("year_of_passedout"));
				s.setEmail(rs1.getString("email"));
				s.setNumber(rs1.getLong("mobile"));
				s.setSecondaryNumber(rs1.getLong("alter_mobile"));
				s.setAddress(rs1.getString("address"));
				s.setJoinDate(rs1.getString("Date_of_joining"));
				s.setCounceller(rs1.getString("counsellor"));
				s.setRemarks(rs1.getString("remarks"));
				
				al.add(s);
			}
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
		//returning data
		return al;
	}
}
