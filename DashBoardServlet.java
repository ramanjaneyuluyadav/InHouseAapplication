package web.controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dao.DashBoardDao;
import web.dao.LoginDaoImp;
import web.model.DashBoard;

/**
 * Author: jogesh 
 * Description: It is dashboard servlet that gets the data from table and redirects to Dashboard.jsp
 * Date: 24/07/2023
 * project v - version 1.2
 */
@WebServlet("/DashBoardServlet")
public class DashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DashBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		
		DashBoardDao dObj = new DashBoardDao();
		
		
		
		DashBoard db =dObj.showDashBoard();
		
		//set resultData as request attribute
				request.setAttribute("dash", db);
				
				
				
				//forward the request to main page
				RequestDispatcher rs = request.getRequestDispatcher("Dashboard.jsp");
				rs.include(request, response);
		
	}



}
