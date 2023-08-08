package web.dao;

/**
 * Author: jogesh
 * Description: It is a StudentDao Interface having method studentRegister();
 * Date:24/07/2023
 * project v -version 1.2
 */

import web.model.Course;
import web.model.Student;

//creating a service interface 
public interface StudentDao {
	public Student studentRegister(Student sm, Course cs);
}
