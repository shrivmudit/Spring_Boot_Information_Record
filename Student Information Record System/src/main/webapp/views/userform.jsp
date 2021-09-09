<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
  font-family: Calibri, Helvetica, sans-serif;
  background-color: seagreen;
}


.container {
    padding: 50px;
  background-color: marron;
}
input[type=text], input[type=password], textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: orange;
  outline: none;
}
 div {
            padding: 10px 0;
         }
 hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.registerbtn:hover {
  opacity: 1;
}        
         
</style>
</head>
<body>

<form action ="userform"> 
<div class ="container"> 
<center>  <h1> Update form</h1> </center>

<p> Please fill this to update account </p>
<hr>
 

<label for="Uname"><b>Uname</b></label>
    <input type="text" placeholder="Enter Uname" name="Uname" id="Uname" required>
    
    <label for="FirstName"><b>FirstName</b></label>
    <input type="text" placeholder="Enter FirstName" name="FirstName" id="FirstName" required>
    
    <label for="LastName"><b>LastName</b></label>
    <input type="text" placeholder="Enter LastName" name="LastName" id="LastName" required>
    
     <label for="Number"> <b>Number</b> </label>
<input type="text" name="country code" placeholder="Country Code"  value="+91" size="2"/> 
<input type="text" name="Number" placeholder="phone no." size="10"/ required>

 <label for="EmailId"><b>EmailId</b></label>
    <input type="text" placeholder="Enter EmailId" name="EmailId" id="EmailId" required>
    


<label for="Password"><b>Password</b></label>
    <input type="text" placeholder="Enter Password" name="Password" id="Password" required>

<div>
<label> 
Course :
</label> 

<select>
<option value="Course">Course</option>
<option value="BCA">BCA</option>
<option value="BBA">BBA</option>
<option value="B.Tech">B.Tech</option>
<option value="MBA">MBA</option>
<option value="MCA">MCA</option>
<option value="M.Tech">M.Tech</option>
</select>
</div>


<label for="Gender"> <b> Gender </b></label>
<input type ="radio" name ="Gender" value ="1" checked =true/> Male
<input type ="radio" name ="Gender" value ="2" /> Female<br> 

<button type="submit" class="registerbtn">Submit & Confirm</button>

  </div>


</form>
</body>
</html>