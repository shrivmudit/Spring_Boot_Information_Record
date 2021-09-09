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
    
    
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
    
  
    <div> <a class="navbar-brand" href="#">Search/Delete the Record Using Student ID </a> </div> <br>
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon">
     <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" th:href="@{/students}"> "Welcome to Perform Operations here"</a>
      </li>
    </ul>
  </div>
</nav>
<br>
<br>
<div class = "container">
		<div class = "row">
			<div class ="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
    
    <form action= "operation" > 
  
    
   Enter Used ID : 
    <input id= "uid" name="UId" /> <br>
    
    <select name="ddlFlag">
    <option value ="select"> Select Records</option>
    <option value ="delete"> Delete Records</option>
    
				 </select>
    <br>
    <div class = "box-footer">
   
    <button type="submit" value="Click Now" class = "btn btn-primary"/>
             Submit     
             </div>
             
             </button>
						</select>
    </form>
    	
    
    
    </body>

</html>   