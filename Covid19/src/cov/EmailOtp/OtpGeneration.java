package cov.EmailOtp;
import java.util.*;
public class OtpGeneration {

	

		
		static char[] OTP() 
	    { 
	        System.out.println("Generating OTP using random() : "); 
	        System.out.print("You OTP is : "); 
	  
	        // Using numeric values 
	        String numbers = "0123456789"; 
	  
	        // Using random method 
	        Random rndm_method = new Random(); 
	        int len=5;
	        char[] otp = new char[len]; 
	  
	        for (int i = 0; i < len; i++) 
	        { 
	            // Use of charAt() method : to get character value 
	            // Use of nextInt() as it is scanning the value as int 
	            otp[i] = 
	             numbers.charAt(rndm_method.nextInt(numbers.length())); 
	        } 
	        return otp; 
	    }
		
		public static String Otp()
		{
			String r=String.valueOf(OTP());
			return r;

	     }
	}



