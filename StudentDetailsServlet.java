package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dao.StudentDetailsDaoImpl;
import web.model.Student;

/**
 * Servlet implementation class StudentDetailsServlet
 */
@WebServlet("/StudentDetailsServlet")
public class StudentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
        StudentDetailsDaoImpl sd = new StudentDetailsDaoImpl();
        List<Student> li= sd.getStudent();
        
        for(Student s: li) {
        	System.out.println(s.getStudentId());
        }
        
        request.setAttribute("dataList", li);
        RequestDispatcher rd = request.getRequestDispatcher("studentlist.jsp");
		rd.forward(request, response);
		
		
	}


}
