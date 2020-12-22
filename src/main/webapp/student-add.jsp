<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Student</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/common/navbar.jsp"></jsp:include>

		<h2 class="mt-3">Add a Student</h2>
		<c:url value="/addstudent" var="addS"></c:url>
		<form action="${addS}" method="post" class="form m-5" enctype="multipart/form-data">
			<div class="form-group">
				<label for="profile" class="form-label">Profile</label> <br />
				<input type="file" name="profile" id="profile"/>
				<br /><br />
				<label for="name" class="form-label">Name</label> 
				<input type="text" name="name" id="name" class="form-control" placeholder="Enter Student Name." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="email" class="form-label">Email</label> 
				<input type="email" name="email" id="email" class="form-control" placeholder="Enter Student Email." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="age" class="form-label">Age</label> 
				<input type="number" name="age" id="age" class="form-control" placeholder="Enter Student Age." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="year" class="form-label">Year</label> 
				<select name="year" id="year" class="form-control">
					<option value="First Year">First Year</option>
					<option value="Second Year">Second Year</option>
					<option value="Third Year">Third Year</option>
					<option value="Fourth Year">Fourth Year</option>
					<option value="Fifth Year">Fifth Year</option>
				</select>
			</div>
			<br />
			<div class="form-group">
				<label for="address" class="form-label">Address</label> 
				<input type="text" name="address" id="address" class="form-control" placeholder="Enter Student Address." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="dob" class="form-label">Date of Birth</label> 
				<input type="date" name="dob" id="dob" class="form-control" required/>
			</div>
			<br />
			<button type="submit" class="btn btn-outline-success">Add a Student</button>
		</form>
	</div>
</body>
</html>