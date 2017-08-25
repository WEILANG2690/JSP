package iii.servletjsp;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DataTypeConversion {

	public static void main(String[] args) {
		try {
			String s1="100", s2="3.14", s3 = "1980-12-31", s4 = "1980-12-32 15:75:90";
			int 	n = Integer.parseInt(s1);
			double 	d = Double.parseDouble(s2);
			java.sql.Date d1 = java.sql.Date.valueOf(s3);
			String[] patterns = {"yyyy-MM-dd HH:mm:ss","yyyy/MM/dd HH:mm:ss", "yyyy-MM-dd HH-mm-ss"};
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			sdf.setLenient(false);
			
			
			java.util.Date d2 = sdf.parse(s4);
			System.out.println("d1=" + d1);
			System.out.println("d2=" + d2);
			System.out.println("--------------------");
			java.util.Date date = new java.util.Date(Long.MAX_VALUE);
			System.out.println("date=" + date);
			
		} catch (NumberFormatException e) {

			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}

	

	}

}
