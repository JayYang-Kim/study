package com.test1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FirstServlet extends GenericServlet {

	private static final long serialVersionUID = 1L;
	
	int num;
	
	@Override
	public void destroy() {
		System.out.println("서블릿이 메모리에서 해제될때 한 번만 실행합니다.");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		num = 1;
		
		System.out.println("서블릿이 처음 메모리에 로딩되고 한 번만 실행합니다.");
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {  
		System.out.println((num++) + " : 번째 호출");
		
		res.setContentType("text/html;charset=utf-8"); // 클라이언트에게 응답하는 문서 타입
		
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("Hello");
		out.println("<br/>");
		out.println("당신은 " + (num++) + "번째 접속했습니다.");
		out.println("</body>");
		out.println("</html>");
	}

}
