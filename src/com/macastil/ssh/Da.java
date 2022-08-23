package com.macastil.ssh;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

public class Da {

	public static void main(String[] args) {
		String string = "2022-02-11T10:42:30.068494800-05:00[America/Bogota]";
		
		//DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
		
		//Date date = Calendar.getInstance().getTime();  
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSSXXX'[America/Bogota]'");  
        Date strDate;
		try {
			strDate = dateFormat.parse(string);
			System.out.println("Converted String: " + strDate);  
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
        

	}

}
