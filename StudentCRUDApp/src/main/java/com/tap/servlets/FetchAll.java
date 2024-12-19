package com.tap.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.dao.StudentDAOImpl;
import com.tap.model.Student;

public class FetchAll extends HttpServlet {
	
	private List<Student> studentList;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDAOImpl sdaoi=new StudentDAOImpl();
		studentList=sdaoi.fetchAll();
		req.getSession().setAttribute("studentList", studentList);
		resp.sendRedirect("home.jsp");
	}

}
