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
		System.out.println("������ �޸𸮿��� �����ɶ� �� ���� �����մϴ�.");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		num = 1;
		
		System.out.println("������ ó�� �޸𸮿� �ε��ǰ� �� ���� �����մϴ�.");
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {  
		System.out.println((num++) + " : ��° ȣ��");
		
		res.setContentType("text/html;charset=utf-8"); // Ŭ���̾�Ʈ���� �����ϴ� ���� Ÿ��
		
		PrintWriter out = res.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("Hello");
		out.println("<br/>");
		out.println("����� " + (num++) + "��° �����߽��ϴ�.");
		out.println("</body>");
		out.println("</html>");
	}

}
