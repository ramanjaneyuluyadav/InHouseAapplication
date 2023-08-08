package web.util;

/**
 * Author: Backend Team
 * Description: It is Database connection file that gets the connection of Mysql Database
 * Date: 24/07/2023
 * project v -version 1.2
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

   private static Connection con;
	
		public static Connection jdbcConnection() {
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch2","root","root");
			} 
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return con;
		}


}