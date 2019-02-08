package com.test1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// 클라이언트 요청 방식이 GET 방식인 경우 호출하며, 클라이언트가 GET 방식으로 요청할 때 마다 호출
	// Tomcat 버젼과 브라우저의 버젼에 따라서 자체적으로 인코딩을 처리해줄 수 있음
	// GET방식은 동일한 데이터를 조회할 경우 서버에 전송하지 않는다.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 클라이언트가 보낸 정보(파라미터)를 받는다.
		String s = null;
		
		try {
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			
			s = "<p>" + name + "님 환영합니다.<br/>";
			
			if (age >= 19) {
				s += " 성인 입니다.</p>";
			} else {
				s += " 미성년자 입니다.<p>";
			}
		} catch (Exception e) {
			System.out.println(e.toString()); // 로그 처리
			s = "입력 데이터가 잘못되어 오류가 발생했습니다.";
		}
		
		// 클라이언트에게 보낼 문서 타입
		resp.setContentType("text/html;charset=utf-8");	
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<h3>GET 방식 요청에 따른 응답</h3>");
		out.print(s);
		out.print("</body>");
		out.print("</html>");
	}
	
	// 클라이언트 요청 방식이 POST 방식인 경우 호출하며, 클라이언트가 POST 방식으로 요청할 때 마다 호출
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s = null;
		
		try {
			// 클라이언트로부터 넘어온 데이터의 인코딩을 지정
			req.setCharacterEncoding("UTF-8");
			
			// 클라이언트가 보낸 정보(파라미터)를 받는다.
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			
			s = "<p>" + name + "님 환영합니다.<br/>";
			
			if (age >= 19) {
				s += " 성인 입니다.</p>";
			} else {
				s += " 미성년자 입니다.<p>";
			}
		} catch (Exception e) {
			System.out.println(e.toString()); // 로그 처리
			s = "입력 데이터가 잘못되어 오류가 발생했습니다.";
		}
		
		// 클라이언트에게 보낼 문서 타입
		resp.setContentType("text/html;charset=utf-8");	
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<h3>POST 방식 요청에 따른 응답</h3>");
		out.print(s);
		out.print("</body>");
		out.print("</html>");
	}	
}
