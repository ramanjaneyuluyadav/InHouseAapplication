package web.dao;

/**
 * Author: jogesh
 * Description: It is a LoginDao Interface having method checkData()
 * Date:
 * project v -version 1.2
 */

import web.model.LoginModel;

//Login service interface
public interface LoginDao {
	
	public Object checkData(LoginModel lm);
}
