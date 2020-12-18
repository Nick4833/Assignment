<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/common/css/bootstrap.min.css" var="bsCss"></c:url>
<c:url value="/common/js/jquery.js" var="jqJs"></c:url>
<c:url value="/common/js/bootstrap.bundle.min.js" var="bsJs"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${bsCss}" />
<script src="${jqJs}" type="text/javascript"></script>
<script src="${bsJs}" type="text/javascript"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link ${empty title ? 'active' : '' }" href="<%= getServletContext().getContextPath() %>">Courses</a></li>
					<c:url value="/addcourse" var="addCourse"></c:url>
					<li class="nav-item"><a class="nav-link ${(not empty title and title == 'addcourse') ? 'active' : '' }" href="${addCourse}">Add Course</a></li>
					<c:url value="/students" var="Students"></c:url>
					<li class="nav-item"><a class="nav-link ${(not empty title and title == 'students') ? 'active' : '' }" href="${Students}">Students</a></li>
					<c:url value="/addstudent" var="addStudent"></c:url>
					<li class="nav-item"><a class="nav-link ${(not empty title and title == 'studentadd') ? 'active' : '' }" href="${addStudent}">Add Student</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>