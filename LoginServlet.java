package web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.dao.LoginDaoImp;
import web.model.DashBoard;
import web.model.LoginModel;

/**
 * Author: shiva 
 * Description: It is a login servlet that gets the data from the jsp page via post method and sets data to LoginModel.java(model) and checks whether 
 				the given data is present in Database or not through LoginDaoImp.java(Dao Implementation) by calling method checkData()
 				and based on the return data it forwards the data as request.setAttribute and it redirects to another jsp page
 * Date: 24/07/2023
 * project v - version 1.2
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	response.setContentType("text/html");
	
	String user = request.getParameter("user");
	String password = request.getParameter("password");
	
	// Create a new instance of LoginModel and set the username and password received from jsp page
	LoginModel lm = new LoginModel();
	lm.setUsername(user);
	lm.setPassword(password);
	
	//create a new instance of loginDaoImp to call method
	LoginDaoImp ld = new LoginDaoImp();
	
	//check the login data using chekData() in logindaoimp and if data is true make sure to receive data in form of Object 
	Object result =ld.checkData(lm);
	
	//check the type of data returned from the chekData()
	if(result instanceof String) {
		
		//if the result is type of String that means there is error and set it as errorMsg 
		request.setAttribute("errorMsg", result);
		
		//Forward the request to the login page where data come from
		RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
		rs.include(request, response);
	}
	else if(result instanceof DashBoard) {
		//if result is type of int[] , it means data is correct
		
		//convert result into int array from Object type by casting
		DashBoard db = (DashBoard)result;
		
		//set resultData as request attribute
		request.setAttribute("dash", db);
		
		HttpSession session = request.getSession();
		session.setAttribute("username",user );
		
		//forward the request to main page
		RequestDispatcher rs = request.getRequestDispatcher("Dashboard.jsp");
		rs.include(request, response);
	}
	
			
		}
	
	

}
