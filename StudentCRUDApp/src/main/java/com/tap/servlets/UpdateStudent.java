package com.tap.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.dao.StudentDAOImpl;
import com.tap.model.Student;

public class UpdateStudent extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String input=req.getParameter("id");
		int id=Integer.parseInt(input);
		Student s = new Student(id,req.getParameter("name"), req.getParameter("email"), req.getParameter("phone"),
				req.getParameter("city"));
		StudentDAOImpl sdaoi = new StudentDAOImpl();
		int x=sdaoi.updateStudent(s);
		if(x==1) {
			resp.sendRedirect("FetchAll");
		}else {
			resp.sendRedirect("Failure.jsp");
		}
	}
}
