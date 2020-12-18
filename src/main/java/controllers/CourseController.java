package controllers;

import java.io.IOException;
import java.time.LocalDate;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Course;

@WebServlet("/addcourse")
public class CourseController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("title", "addcourse");
		getServletContext().getRequestDispatcher("/course-add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));
		String level = req.getParameter("level");
		int duration = Integer.parseInt(req.getParameter("duration"));
		LocalDate startDate = LocalDate.parse(req.getParameter("startdate"));
		
		Course c = new Course();
		c.setName(name);
		c.setPrice(price);
		c.setLevel(level);
		c.setDuration(duration);
		c.setStartDate(startDate);
		
		HttpSession session = req.getSession(true);
		List courseList = (ArrayList<Course>)session.getAttribute("courseList");
		if(courseList == null) {
			courseList = new ArrayList<Course>();
		}
		
		courseList.add(c);
		
		session.setAttribute("courseList", courseList);
		
		resp.sendRedirect(req.getContextPath());
		
	}

}
