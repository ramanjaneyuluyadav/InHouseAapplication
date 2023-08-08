package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dao.StudentDaoImp;
import web.model.Course;
import web.model.Student;

/**
  *Author: venkat 
 *Description: it is a student servlet that gets the data from the jsp page via post method and sets data to the Student.java(model)file
 			   and inserts in Database through StudentDaoImp.java(Dao implementation)file by calling method studentRegister() and gets the 
 			   studentId from that method and then it forwards the studentId as request.setattribute and redirects jsp page
 *Date:24/07/2023
 *project v -version 1.2
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//getting data from jsp page
		String firstName=request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String gender = request.getParameter("gender");
		String fatherName = request.getParameter("fathername");
		String qualification = request.getParameter("qualification");
		String yearOfPass = request.getParameter("yearofpass");
		String email = request.getParameter("email");
		long number = Long.parseLong(request.getParameter("mobile"));
		long secondaryMobile = Long.parseLong(request.getParameter("secondmobile"));
		String address = request.getParameter("address");
		String joinDate = request.getParameter("joindate");
		String counceller = request.getParameter("counceller");
		String remarks = request.getParameter("remarks");
		
		
		String course = request.getParameter("course");

		
		//create a instance of Student class
		Student sObj = new Student();

				//setting data to Student Model
				sObj.setFirstName(firstName);
				sObj.setLastName(lastName);
				sObj.setGender(gender);
				sObj.setFatherName(fatherName);
				sObj.setQualification(qualification);
				sObj.setYearOfPass(yearOfPass);
				sObj.setEmail(email);
				sObj.setNumber(number);
				sObj.setSecondaryNumber(secondaryMobile);
				sObj.setAddress(address);
				sObj.setCounceller(counceller);
				sObj.setJoinDate(joinDate);
				sObj.setRemarks(remarks);
				
		//create a instance of Course
		Course cObj = new Course();
		
				//set data to course Model
				cObj.setCourseName(course);
			
		//create instance of StudentDaoImp and calling method studentRegister() receiving studentId
		StudentDaoImp sd = new StudentDaoImp();
		Student sid = sd.studentRegister(sObj,cObj);
		
		Course fee = sd.getFeeDetails(cObj);
		
		System.out.println(fee.getFee());
		
	
		
		
	
		
		//forwarding request to jsp page
		if(sid.getStudentId()!=0) {
			
			//set received studentId as request attribute
			request.setAttribute("studId", sid);
			request.setAttribute("feeData", fee);
			
			
		RequestDispatcher rd = request.getRequestDispatcher("Fee.jsp");
		rd.forward(request, response);
		
		}

	}

}
