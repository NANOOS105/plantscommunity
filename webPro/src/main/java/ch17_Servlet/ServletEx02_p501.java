package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿(p498~)0
//p500예제 - 브라우저에 현재 시간을 출력하는 웹문서 

//web.xml으로 매핑하기(p501)
//요청주소 http://localhost:8081/webPro/now
//@WebServlet(urlPatterns = "/now")
public class ServletEx02_p501 extends HttpServlet{
	
	//get방식요청시 호출되는 메서드 
	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()호출");//콘솔출력
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		//현재 시간을 브라우저에 출력
		//클래스타입 out = new 클래스명();
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head><title>servlet페이지</title></head>");
		out.println("<body>");
		out.println("<h2>web.xml으로 매핑하기(p501)</h2>");
		out.println("<h3>현재시간</h3>");
		out.println("<h4>Date객체:"+new Date()+"</h4>");
		out.println("<h4>"+Calendar.getInstance()+"</h4>");
		
		Calendar cal = Calendar.getInstance();
		long millis = cal.getTimeInMillis();
		Date today = new Date(millis);
		out.println("<h4>Calendear를 이용하여 생성한 객체:"+today+"</h4>");
		
		out.println("</body>");
		out.println("</html>");
	}
}
