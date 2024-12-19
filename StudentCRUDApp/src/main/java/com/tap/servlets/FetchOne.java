package com.tap.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.dao.StudentDAOImpl;
import com.tap.model.Student;

public class FetchOne extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("sid"));
		StudentDAOImpl sdaoi=new StudentDAOImpl();
		Student student = sdaoi.fetchOnId(id);
		req.getSession().setAttribute("student", student);
		resp.sendRedirect("editStudent.jsp");
	}
}