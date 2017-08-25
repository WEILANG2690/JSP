package iii.servletjsp;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LongToDateString {

	public static void main(String[] args) {
		long now = System.currentTimeMillis();
		Date d = new Date(now);		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString1 = sdf.format(d);
		System.out.println(dateString1);
		
		File file = new File("D:\\Shared\\JSP_Shared\\0822\\ValueOfDemo.java");
		long lm = file.lastModified();
		Date d2 = new Date(lm);	
		String dateString2 = sdf.format(d2);
		System.out.println(dateString2);

	}

}
