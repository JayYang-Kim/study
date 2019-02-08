package com.test1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// Ŭ���̾�Ʈ ��û ����� GET ����� ��� ȣ���ϸ�, Ŭ���̾�Ʈ�� GET ������� ��û�� �� ���� ȣ��
	// Tomcat ������ �������� ������ ���� ��ü������ ���ڵ��� ó������ �� ����
	// GET����� ������ �����͸� ��ȸ�� ��� ������ �������� �ʴ´�.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Ŭ���̾�Ʈ�� ���� ����(�Ķ����)�� �޴´�.
		String s = null;
		
		try {
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			
			s = "<p>" + name + "�� ȯ���մϴ�.<br/>";
			
			if (age >= 19) {
				s += " ���� �Դϴ�.</p>";
			} else {
				s += " �̼����� �Դϴ�.<p>";
			}
		} catch (Exception e) {
			System.out.println(e.toString()); // �α� ó��
			s = "�Է� �����Ͱ� �߸��Ǿ� ������ �߻��߽��ϴ�.";
		}
		
		// Ŭ���̾�Ʈ���� ���� ���� Ÿ��
		resp.setContentType("text/html;charset=utf-8");	
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<h3>GET ��� ��û�� ���� ����</h3>");
		out.print(s);
		out.print("</body>");
		out.print("</html>");
	}
	
	// Ŭ���̾�Ʈ ��û ����� POST ����� ��� ȣ���ϸ�, Ŭ���̾�Ʈ�� POST ������� ��û�� �� ���� ȣ��
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String s = null;
		
		try {
			// Ŭ���̾�Ʈ�κ��� �Ѿ�� �������� ���ڵ��� ����
			req.setCharacterEncoding("UTF-8");
			
			// Ŭ���̾�Ʈ�� ���� ����(�Ķ����)�� �޴´�.
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			
			s = "<p>" + name + "�� ȯ���մϴ�.<br/>";
			
			if (age >= 19) {
				s += " ���� �Դϴ�.</p>";
			} else {
				s += " �̼����� �Դϴ�.<p>";
			}
		} catch (Exception e) {
			System.out.println(e.toString()); // �α� ó��
			s = "�Է� �����Ͱ� �߸��Ǿ� ������ �߻��߽��ϴ�.";
		}
		
		// Ŭ���̾�Ʈ���� ���� ���� Ÿ��
		resp.setContentType("text/html;charset=utf-8");	
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("<h3>POST ��� ��û�� ���� ����</h3>");
		out.print(s);
		out.print("</body>");
		out.print("</html>");
	}	
}
