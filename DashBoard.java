package web.model;

public class DashBoard {
	
	private String name;
	private int totalStudents;
    private int studentsInYear;
	private int studentsInMonth;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTotalStudents() {
		return totalStudents;
	}
	public void setTotalStudents(int totalStudents) {
		this.totalStudents = totalStudents;
	}
	public int getStudentsInYear() {
		return studentsInYear;
	}
	public void setStudentsInYear(int studentsInYear) {
		this.studentsInYear = studentsInYear;
	}
	public int getStudentsInMonth() {
		return studentsInMonth;
	}
	public void setStudentsInMonth(int studentsInMonth) {
		this.studentsInMonth = studentsInMonth;
	}
	
	

}
