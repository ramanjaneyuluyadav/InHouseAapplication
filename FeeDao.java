package web.dao;

/**
 * Author: surya
 * Description: It is a FeeDao  interface having method insertFee()
 * Date: 23/07/2023
 * project v -version 1.2
 */

import web.model.Fee;

//creating a service interface
public interface FeeDao {
	public String insertFee(Fee f);
}
