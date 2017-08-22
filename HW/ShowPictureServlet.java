package ch02.ex06.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 *  1. 本Servlet產生非文字性資料的回應
 *  2. 通常Servlet不會產生文字性的回應，但如果要產生
 *     非文字性資料的回應(如圖片)，必須編寫下列兩行：
 *     
       response.setContentType(mimeType);  
       OutputStream  os = response.getOutputStream();
 */
@WebServlet("/ch02/ShowPictureServlet")
public class ShowPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	String[] pics = { "autumn_fs.jpg", "fs.jpg", "m001.jpg", "v06.jpg", "m12.jpg", "m46.jpg" };
	
	List<String> list = new ArrayList<String>(Arrays.asList(pics));

	HashSet<String> tset = new HashSet<String>(list);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String str = "";

		Iterator<String> it = tset.iterator();
		while (it.hasNext()) {
			str = it.next();
		}
		
		//System.out.println(tset.size());
		String filename = str;// filename: 隨機挑選的檔案名稱
		tset.remove(str);
		
		if(tset.isEmpty()){
			for(int i=0;i<pics.length;i++){
				tset.add(pics[i]);
			}
		}
		
		String path = "/images/" + filename; // path: 檔案在本系統內的路徑名稱
		String mimeType = getServletContext().getMimeType(filename);
		response.setContentType(mimeType);
		try (InputStream is = getServletContext().getResourceAsStream(path);
				OutputStream os = response.getOutputStream();) {
			byte[] b = new byte[1024];
			int len;
			while ((len = is.read(b)) != -1) {
				os.write(b, 0, len);
			}
		}
	}
}