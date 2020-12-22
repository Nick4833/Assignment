package controllers;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import entities.Student;

@WebServlet(urlPatterns = {"/addstudent", "/students"})
@MultipartConfig
public class StudentController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		if("/addstudent".equals(path)) {
			req.setAttribute("title", "studentadd");
			getServletContext().getRequestDispatcher("/student-add.jsp").forward(req, resp);
		}
		else if("/students".equals(path)) {
			req.setAttribute("title", "students");
			getServletContext().getRequestDispatcher("/students.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String year = req.getParameter("year");
		LocalDate dob = LocalDate.parse(req.getParameter("dob"));
		
		Part imgPart=req.getPart("profile");
		
		String imgFileName=imgPart.getSubmittedFileName();
		String currentName=imgFileName.substring(0,imgFileName.lastIndexOf("."));
		String newName=""+System.currentTimeMillis();
		imgFileName=imgFileName.replace(currentName,newName);
		
		Student s = new Student();
		s.setProfile(imgFileName);
		s.setName(name);
		s.setAge(age);
		s.setEmail(email);
		s.setYear(year);
		s.setAddress(address);
		s.setDob(dob);
		
		HttpSession session = req.getSession(true);
		List<Student> studentList = (ArrayList<Student>) session.getAttribute("studentList");
		
		if(studentList == null) {
			studentList = new ArrayList<Student>();
		}
		
		studentList.add(s);
		
		session.setAttribute("studentList", studentList);
		
		String rootPath=getServletContext().getRealPath("");
		String dirPath=rootPath+File.separator+"imgUploads";
		File rootDir=new File(dirPath);
		if(!rootDir.exists())
			rootDir.mkdirs();
		imgPart.write(rootDir+File.separator+imgFileName);
		
		resp.sendRedirect("students.jsp");
		
	}

}
