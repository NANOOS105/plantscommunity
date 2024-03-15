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

//애노테이션으로 매핑하기(p503)
//요청주소 http://localhost:8081/webPro/myInfo
@WebServlet(urlPatterns = "/myInfo")
public class ServletEx03_annotation extends HttpServlet{
	
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
		out.println("<head><title>박희수 임의정보</title></head>");
		out.println("<body>");
		out.println("<h3>박희수</h3>");
		out.println("좋아하는 색 : 보라색<br/>");
		out.println("거주도시 : 서울<br/>");
		out.println("</body>");
		out.println("</html>");
	}
}
