<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/common/navbar.jsp"></jsp:include>
		<div class="row mt-5">
			<div class="col-10">
				<h2>Courses</h2>
			</div>
			<div class="col-2">
				<c:url value="/addcourse" var="addC"></c:url>
				<a href="${addC}" class="btn btn-success">Add a Course</a>
			</div>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Course Name</th>
					<th scope="col">Price</th>
					<th scope="col">Level</th>
					<th scope="col">Duration</th>
					<th scope="col">Start Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${courseList}" var="course">
					<tr>
						<td>${course.name}</td>
						<td>${course.price}</td>
						<td>${course.level}</td>
						<td>${course.duration}</td>
						<td>${course.startDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>