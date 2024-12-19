# StudentCRUDManagementApp
A Java-based CRUD application for managing student records. Built with Servlets, JDBC, and MySQL, it supports Create, Read, Update, and Delete operations. Features include viewing all students, searching by ID, and updating or deleting records. Easily deployable on Apache Tomcat.
# StudentCRUD Project

## Overview
The StudentCRUD project is a Java-based web application that demonstrates basic CRUD (Create, Read, Update, Delete) operations on a `Student` entity. The application is implemented using Java servlets, JSP, and a MySQL database for data persistence. The project follows an MVC (Model-View-Controller) design pattern to separate concerns and maintain clean code.

---

## Features
1. **Add Student**: Insert a new student record into the database.
2. **View Students**: Fetch and display a list of all students.
3. **Update Student**: Edit details of an existing student.
4. **Delete Student**: Remove a student record from the database.

---

## Project Structure

### 1. `com.tap.model`
Contains the `Student` class, which represents the entity for the CRUD operations.
```java
public class Student {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String city;
    // Getters, setters, constructors, and toString method.
}
```

### 2. `com.tap.dao`
Defines the DAO (Data Access Object) layer for interacting with the database.
- **`StudentDAO` Interface**: Declares methods for CRUD operations.
- **`StudentDAOImpl` Class**: Implements the interface and handles database interactions using JDBC.

```java
public interface StudentDAO {
    List<Student> fetchAll();
}

public class StudentDAOImpl implements StudentDAO {
    public List<Student> fetchAll();
    public int insertStudent(Student s);
    public Student fetchOnId(int id);
    public int updateStudent(Student s);
    public int delete(int id);
}
```

---

## Database Configuration
The database connection is established using JDBC:
- **URL**: `jdbc:mysql://localhost:3306/jdbc`
- **Username**: `root`
- **Password**: `prateek@123`

The `student` table should be structured as follows:
```sql
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(15),
    city VARCHAR(100)
);
```

---

## Setup Instructions

1. **Clone the Repository**:
```bash
git clone <repository-url>
```

2. **Import into Eclipse**:
   - Open Eclipse IDE.
   - Select "File > Import > Existing Projects into Workspace".
   - Browse to the cloned repository and import the project.

3. **Configure Database**:
   - Make sure MySQL is running.
   - Create a database named `jdbc` and the `student` table as per the schema.

4. **Run the Application**:
   - Deploy the project to a server like Apache Tomcat.
   - Access the application via a web browser.

---

## Author Information
**Author**: Prateek Chgougale
**Contact**: prateekchougale65@gmail.com 

All rights reserved by the author.

---

## Contribution
Contributions are welcome! Feel free to fork the repository and submit pull requests.

---

