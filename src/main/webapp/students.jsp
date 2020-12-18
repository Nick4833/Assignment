<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/common/navbar.jsp"></jsp:include>
		<div class="row mt-5">
			<div class="col-10">
				<h2>Students</h2>
			</div>
			<div class="col-2">
				<c:url value="/addstudent" var="addS"></c:url>
				<a href="${addS}" class="btn btn-success">Add a Student</a>
			</div>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Student Name</th>
					<th scope="col">Email</th>
					<th scope="col">Age</th>
					<th scope="col">Year</th>
					<th scope="col">Address</th>
					<th scope="col">Date of Birth</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${studentList}" var="student">
					<tr>
						<td>${student.name}</td>
						<td>${student.email}</td>
						<td>${student.age}</td>
						<td>${student.year}</td>
						<td>${student.address}</td>
						<td>${student.dob}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>