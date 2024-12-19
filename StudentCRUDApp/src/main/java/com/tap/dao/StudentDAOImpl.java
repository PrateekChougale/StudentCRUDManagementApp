package com.tap.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tap.model.Student;

public class StudentDAOImpl implements StudentDAO {
    private Connection con;
    private String FETCHALL_QUERY = "SELECT * FROM student";
    private String INSERT_QUERY = "INSERT INTO STUDENT(name,email,phone,city) values(?,?,?,?)";
    private String FETCHID_QUERY = "SELECT * FROM student where id=?";
    private String UPDATE_QUERY = "UPDATE STUDENT SET name=?,phone=?,city=? where id=?";
    private String DELETE_QUERY = "DELETE FROM STUDENT WHERE id=?";
	private PreparedStatement pstmt;
	private int status;
	private ResultSet res;
	private ArrayList<Student> studentList;

    public StudentDAOImpl() {
        String url = "jdbc:mysql://localhost:3306/jdbc";
        String username = "root";
        String password = "prateek@123";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Connection established successfully.");
        } catch (Exception e) {
            System.out.println("Error while establishing connection.");
            e.printStackTrace();
        }
    }

    @Override
    public List<Student> fetchAll() {
        ArrayList<Student> studentList = new ArrayList<>();
        try (Statement stmt = con.createStatement();
             ResultSet res = stmt.executeQuery(FETCHALL_QUERY)) {
            studentList = extractStudentFromResultset(res);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return studentList; 
    }

    private ArrayList<Student> extractStudentFromResultset(ResultSet res) {
        ArrayList<Student> studentList = new ArrayList<>();
        try {
            while (res.next()) {
                studentList.add(new Student(res.getInt("id"),
                        res.getString("name"),
                        res.getString("email"),
                        res.getString("phone"),
                        res.getString("city")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return studentList;
    }
    
    public int insertStudent(Student s) {
    	try {
			pstmt=con.prepareStatement(INSERT_QUERY);
			pstmt.setString(1, s.getName());
			pstmt.setString(2, s.getEmail());
			pstmt.setString(3, s.getPhone());
			pstmt.setString(4, s.getCity());
			status=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return status;
    }
    
    public Student fetchOnId(int id) {
    	try {
			pstmt=con.prepareStatement(FETCHID_QUERY);
			pstmt.setInt(1, id);
			res=pstmt.executeQuery();
			studentList=extractStudentFromResultset(res);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return studentList.get(0);
    }
    
    public int updateStudent(Student s) {
    	try {
			pstmt=con.prepareStatement(UPDATE_QUERY);
			pstmt.setString(1, s.getName());
			pstmt.setString(2, s.getPhone());
			pstmt.setString(3, s.getCity());
			pstmt.setInt(4, s.getId());
			status=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return status;
    }

	public int delete(int id) {
		try {
			pstmt=con.prepareStatement(DELETE_QUERY);
			pstmt.setInt(1, id);
			status=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
