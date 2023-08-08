package web.controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dao.FeeDaoImp;
import web.model.Fee;

/**
 *Author: siri
 *Description: it is FeeServlet that gets the data from the jsp page and sets data to Fee.java(model) file and inserts it into database through FeeDaoImp.java(Dao Implementation) file 
 			   by calling method insertFee() and based on the return data it redirects to another jsp page
 *Date:24/07/2023
 *project v -version 1.2
 */
@WebServlet("/FeeServlet")
public class FeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	response.setContentType("text/html");
    	
    	//create a instance of Fee model
		Fee f = new Fee(); 
		
		//getting data from the jsp page and converting into int by using Wrapper classes and setting it to Fee Model
		System.out.println(request.getParameter("studId"));
		int studId = Integer.parseInt(request.getParameter("studId"));
	    f.setStudId(studId);
	    int totalFee = Integer.parseInt(request.getParameter("totalFee"));
	    f.setTotalFee(totalFee);
	    int paidAmount = Integer.parseInt(request.getParameter("paidAmount"));
	    f.setPaidAmount(paidAmount);
	    f.setPaidDate(request.getParameter("paidDate"));
	    f.setModeOfPayment(request.getParameter("modeOfPayment"));
	    int dueAmount = Integer.parseInt(request.getParameter("dueAmount"));
	    f.setDueAmount(dueAmount);

	    //create a instance of FeeDaoImp and calling insertFee() it returns a message in the String type
		FeeDaoImp fd = new FeeDaoImp();
		String insert = fd.insertFee(f);
 
		//forwarding request to jsp page
		if(insert.equals("Fee details of one student is added")) {
	    RequestDispatcher rd = request.getRequestDispatcher("confirmfile.jsp");
	    rd.include(request, response);
		}
	}
}
