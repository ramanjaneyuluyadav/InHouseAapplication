package web.model;

/**
*Author: akhila
*Description: It is model class with private fields and getters(),setters()
*Date: 23/07/2023
*project v -version 1.2
*/

public class LoginModel {
	
	//private fields
	private String username;
	private String password;
	
	//default constructor
	public  LoginModel() {
		
	}
	
	//getters and setters
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
