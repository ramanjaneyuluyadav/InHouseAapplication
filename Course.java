package web.model;
/**
*Author: rama anjaneylu
*Description: It is model class with private fields and getters(),setters()
*Date:24/07/2023
*project v -version 1.2
*/
public class Course {
	
	//fields
	private int courseId;
	private String courseName;
	private int fee;
	
	//default constructor
	public Course() {
		
	}
	
	//getters and setters
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	
	
}
