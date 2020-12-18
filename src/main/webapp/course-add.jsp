<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Course</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/common/navbar.jsp"></jsp:include>

		<h2 class="mt-3">Add a Course</h2>
		<c:url value="/addcourse" var="addC"></c:url>
		<form action="${addC}" method="post" class="form m-5">
			<div class="form-group">
				<label for="name" class="form-label">Name</label> 
				<input type="text" name="name" id="name" class="form-control" placeholder="Enter a Course Name." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="price" class="form-label">Price</label> 
				<input type="number" name="price" id="price" class="form-control" placeholder="Enter a Course Price." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="level" class="form-label">Level</label>
				<select name="level" id="level" class="form-control">
					<option value="Basic">Basic</option>
					<option value="Intermediate">Intermediate</option>
					<option value="Advance">Advance</option>
				</select>
			</div>
			<br />
			<div class="form-group">
				<label for="duration" class="form-label">Duration</label> 
				<input type="number" name="duration" id="duration" class="form-control" placeholder="Enter a Course Duration." required/>
			</div>
			<br />
			<div class="form-group">
				<label for="startdate" class="form-label">Start Date</label> 
				<input type="date" name="startdate" id="startdate" class="form-control" placeholder="Enter a Course Start Date." required/>
			</div>
			<br />
			<button type="submit" class="btn btn-outline-success">Add a Course</button>
		</form>
	</div>
</body>
</html>