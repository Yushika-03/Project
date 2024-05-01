package com.cell.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class DBConnection implements DBConfig {
static Connection con=null;	
public static Connection getConn() 

  {
    
	try {
		Class.forName(Driver);
		con = DriverManager.getConnection(Conn,unm,pw);
		
	    }catch(Exception e) {
		System.out.println(e);
	 }
	return con;
  }
	
}
