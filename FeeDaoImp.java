package web.dao;

/**
 * Author: surya 
 * Description: It is a Dao implementation file that implements FeeDao.java(service) and gets the data from Fee.java(model) and
 				inserts the fee details into the Fee table when method is called from servlet
 * Date: 23/07/2023
 * project v -version 1.2
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import web.model.Fee;
import web.util.DatabaseUtil;

public class FeeDaoImp implements FeeDao {
	
	//implementing inserFee method from FeeDao service
	public String insertFee(Fee f) {
		
		String status = "";
		
		String query = "insert into fee (stud_id,total_fee,paid_amount,paid_date,mode_of_payment,due_amount) values (?,?,?,?,?,?)";
		
		//getting data from Fee model and storing it in a variable
		
		int studId = f.getStudId();
		int totalFee = f.getTotalFee();
		int paidAmount = f.getPaidAmount();
		String paidDate = f.getPaidDate();
		String modeOfPayment = f.getModeOfPayment();
		int dueAmount = f.getDueAmount();
		
		try {
			
			//converting data from String type to Sql date by using SimpleDateFormat
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date parsedDate = dateFormat.parse(paidDate);
			java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
			
			//getting connection from DatebaseUtil class
			Connection con = DatabaseUtil.jdbcConnection();
			
			//inserting data into fee table using preparedStatement
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1,studId);
			ps.setInt(2, totalFee);
			ps.setInt(3, paidAmount);
			ps.setDate(4, sqlDate);
			ps.setString(5, modeOfPayment);
			ps.setInt(6, dueAmount);
			int n = ps.executeUpdate();
			if(n>0)
				status = "Fee details of one student is added";
			else
				System.out.println("Enter the correct fee details of student");
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		//returning message
		return status;
	}

}
