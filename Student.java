package web.model;

/**
*Author: venkat
*Description: It is model class with private fields and getters(),setters()
*Date: 23/07/2023
*project v -version 1.2
*/

public class Student {
	
	//fields
	private int studentId;
	private String firstName;
	private String lastName;
	private String gender;
	private String fatherName;
	private String qualification;
	private String yearOfPass;
	private String email;
	private long number;
	private long secondaryNumber;
	private String address;
	private String joinDate;
	private String counceller;
	private String remarks;
	

	
	public Student() {	//constructor
		
	}
	
	//getters and setters
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public long getSecondaryNumber() {
		return secondaryNumber;
	}
	public void setSecondaryNumber(long secondaryNumber) {
		this.secondaryNumber = secondaryNumber;
	}
	public String getCounceller() {
		return counceller;
	}
	public void setCounceller(String counceller) {
		this.counceller = counceller;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getYearOfPass() {
		return yearOfPass;
	}
	public void setYearOfPass(String yearOfPass) {
		this.yearOfPass = yearOfPass;
	}

	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
}