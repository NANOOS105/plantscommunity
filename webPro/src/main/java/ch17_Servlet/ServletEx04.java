package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletEx04")
public class ServletEx04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletEx04() {
        super();
        System.out.println("ServletEx04기본생성자 호출");
    }
    
    //get방식 요청시 자동호출되는 서비스 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("doGet() 호출");
		
		 response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 //위의 코드를 아래와 같이 작성 할 수 있다.
		 PrintWriter out = response.getWriter();
		out = out.append("\r\nServed at:");
		String cp = request.getContextPath();
		out.append(cp);
	}
    
	//HttpServlet의 부모클래스인 GenericServlet 클래스에 있는 메서드
	@Override
	public void destroy() {
		System.out.println("destroy()호출: 서블릿이 소멸되면서 해야할 작업이 있다면..");
	}

	//super.init(config)를 호출할 필요가 없도록 재정의할 수 있는 방법 
	@Override
	public void init() throws ServletException {
				super.init();
				System.out.println("init()호출: 환경설정과 같은 필요한 작업 수행");
	}

	//post방식 요청시 자동호출되는 서비스 메서드 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 호출");
		doGet(request, response);
	}

}
