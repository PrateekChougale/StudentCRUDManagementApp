package com.tap.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tap.dao.StudentDAOImpl;


public class DeleteOne extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int Id=Integer.parseInt(req.getParameter("studentId"));
		StudentDAOImpl sdaoi = new StudentDAOImpl();
		int x=sdaoi.delete(Id);
		if(x!=0) {
			resp.sendRedirect("FetchAll");
		}else {
			resp.sendRedirect("Failure.jsp");
		}
	}
}
