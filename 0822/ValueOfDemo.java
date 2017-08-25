package iii.servletjsp;

import java.math.BigDecimal;
import java.sql.Date;

public class ValueOfDemo {

	public static void main(String[] args) {
		Date orderDate1 = Date.valueOf("2011-01-01");
		BigDecimal bd1 = BigDecimal.valueOf(36985222.2223232);
		Integer i = Integer.valueOf("100256");
		String s = String.valueOf(3.14);
		
		// ClassName.valueOf(參數) : 將參數轉換為本方法所屬類別的物件
	
	}

}
