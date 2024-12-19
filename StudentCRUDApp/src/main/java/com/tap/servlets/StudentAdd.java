package com.tap.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.dao.StudentDAOImpl;
import com.tap.model.Student;

public class StudentAdd extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student s = new Student(req.getParameter("name"), req.getParameter("email"), req.getParameter("phone"),
				req.getParameter("city"));
		StudentDAOImpl sdaoi = new StudentDAOImpl();
		int status = sdaoi.insertStudent(s);
		if (status == 1) {
			resp.sendRedirect("FetchAll");
		} else {
			resp.sendRedirect("Failure.jsp");
		}
	}

}
