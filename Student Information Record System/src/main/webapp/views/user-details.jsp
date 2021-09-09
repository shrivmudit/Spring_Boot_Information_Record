<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    </head>
    <body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Information of the Student</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" th:href="@{/}">Student Management</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" th:href="@{/}">Teacher Management</a>
      </li>
    </ul>
  </div>
</nav>
<div class ="container">
		<div class = "row">
			<h2> Record of Student </h2>
		</div>
		
		<div class = "row">
			<div class = "col-lg-3">
				<a th:href = "@{/}" class = "btn btn-primary btn-sm mb-3"> Add Student</a>
			</div>
		</div>
		<table class = "table table-striped table-bordered">
			<thead class = "table-dark">
				<tr>
					<th>Student First Name</th>
					<th>Student Last Name</th>
					<th>Mobile Number</th>
					<th>Student User Name </th>
					<th> Student Email ID</th>
					<th> Gender </th>
					<th> Actions </th>
				</tr>
			</thead>
		
		<tbody>
				<tr th:each = " ${regObj.id}">
				   <td th:text = "${regObj.firstname}"></td>
				    <td th:text = "${regObj.secondname}"></td>
				     <td th:text = "${regObj.number}"></td>
					<td th:text = "${regObj.name}"></td>
					<td th:text = "${regObj.email}"></td>
					<td th:text = "${regObj.gender}"></td>
					<td>
						<a th:href = "@{/students/edit/{id}(id=${regObj.uID})}"
						 class = "btn btn-primary">Update</a>
						
						
					</td>
					</tr>
		
		</tbody>
		
		</table>
		
	</div>
		
		
		
   
  <%--   <br> 
     <h1> ************ User Details **********</h1>
    
      User Name : ${regObj.name} <br>
      User Email : ${regObj.email} <br>
      Gender : ${regObj.gender} <br>
 	  Hobbies : ${regObj.hobbies[0]}, ${regObj.hobbies[1]} <br>  --%>
   
   
    
   
    </body>
    </html>