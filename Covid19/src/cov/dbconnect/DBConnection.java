package cov.dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	
	public static Connection connect()
	{
		
		
	   Connection con=null;
		try
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Corona","root","giet@123");
		
		}
		catch(Exception e)
		{
			System.out.println("second catch "+e);
		}
		return con;
	}
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		System.out.println(connect());

	}

}
