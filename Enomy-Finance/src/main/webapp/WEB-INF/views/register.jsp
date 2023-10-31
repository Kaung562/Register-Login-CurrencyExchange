<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<script src="https://kit.fontawesome.com/190c5a71e5.js" crossorigin="anonymous"></script>
<style>

body{

justift-content: center;

}

.reg{
 width: 640px;
 height: 440px;
 margin: 150px auto 0px auto;
 border: 3px groove #FFFF9F;
 border-radius: 10px;
 font-family: sans-serif;


}

h3{
text-align: center;
padding: 10px;
margin-top: 5px;
}

label{
display: flex;
margin: 10px auto 5px 150px;
padding: auto 2px 0px auto;
}

input{
margin-left:150px;
width: 300px;
padding: 7px;
border: 1px solid #ddd;
border-radius: 5px;
outline: 0;
box-shadow: inset 1px 1px 1px rgba(0,0,0,0.3);

}

.btn{

text-align: center;

}

button,a{
     
    text-decoration: none;
    width: 200px;
    padding: 7px;
    background: #FFF600;
    color: #000;
    font-size: 15px;
    border: 1px solid #FFF600;
    border-radius: 6px;
    margin-top: 30px;
    cursor: pointer;
    transition: background 0.5s;
    margin: 3px 3px;
      
}

button:hover,a:hover {
background: #FFFF9F;

}

.input{

margin-bottom: 20px;

}

span{

position: absolute;
font-size: 14px;
color: red;

}

span i{

 color: seagreen;
 padding: 2px;
 

}

#submit-error{
margin-left: 150px;
display: none;
transition: 0.5s;


}


</style>
</head>
<body>
<form:form action="save" modelAttribute="userRegister" method="POST">

<div class="reg">
<h3>Registration</h3>
<div class="input">
<label>First Name</label>
<form:input path="firstname" id="firstname" type="text" placeholder="Please type your first name" onkeyup="validateFName()"/>
<span id="fname-error"></span>
</div>


<div class="input">
<label>Last Name</label>
<form:input path="lastname" id="lastname" type="text" placeholder="Please type your last name" onkeyup="validateLName()"/>
<span id="lname-error"></span>

</div>
<div class="input">
<label>Email</label>
<form:input path="email" id="email" type="text" placeholder="please type your email" onkeyup="validateEmail()"/>
<span id="email-error"></span>

</div>
<div class="input">
<label>Password</label> 
<form:input path="password" id="password" type="password" placeholder="Please type your password" onkeyup="validatePassword()"/>
<span id="password-error"></span>
</div>

<div class="btn">
<button  type="submit" onclick="return validateForm()">Register</button>
<a href="/project">Back </a>
</div>
<span id="submit-error"></span>
</div>
</form:form>

<script > 

var fnameError = document.getElementById('fname-error');
var lnameError = document.getElementById('lname-error');
var emailError = document.getElementById('email-error');
var passwordError = document.getElementById('password-error');
var submitError = document.getElementById('submit-error');

function validateFName(){
	
	var fname = document.getElementById('firstname').value;
	
	if (fname.length == 0){
		
		fnameError.innerHTML = 'First name is required';
		return false;
		
	}
	
	if (!fname.match('^[a-zA-Z ]+$')){
		
		fnameError.innerHTML = 'Please input valid name';
		return false;
	}
	
	fnameError.innerHTML = '<i class="fa-solid fa-circle-check"></i>';
	return true;
	
}


function validateLName(){
	
	var lname = document.getElementById('lastname').value;
	
	if (lname.length == 0){
		
		lnameError.innerHTML = 'First name is required';
		return false;
		
	}
	
	if (!lname.match('^[a-zA-Z ]+$')){
		
		lnameError.innerHTML = 'Please input valid name';
		return false;
	}
	
	lnameError.innerHTML = '<i class="fa-solid fa-circle-check"></i>';
	return true;
	
}

function validateEmail(){
	
	var uemail = document.getElementById('email').value;
	
	if (uemail.length == 0){
		
		emailError.innerHTML = 'Email is required';
		return false;
		
	}
	
	if (!uemail.includes("@gmail.com")){
		
		emailError.innerHTML = 'Please input valid email<br>(e.g., example@gmail.com)';
		return false;
	}
	
	emailError.innerHTML = '<i class="fa-solid fa-circle-check"></i>';
	return true;
	
}

function validatePassword(){
	
	var upassword = document.getElementById('password').value;
	
	if (upassword.length == 0){
		
		passwordError.innerHTML = 'Password is required';
		return false;
		
	}
	
	if (upassword.length < 8){
		
		passwordError.innerHTML = 'Password should have at least 8 characters';
		return false;
	}
	
	passwordError.innerHTML = '<i class="fa-solid fa-circle-check"></i>';
	return true;
	
}

function validateForm(){
	
	if (!validateFName() || !validateLName() || !validateEmail() || !validatePassword()){
		submitError.style.display = 'block';
		submitError.innerHTML = 'You cannot submit please fix the error';
		setTimeout(function(){submitError.style.display = 'none' ;}, 3000);
		return false;
		
		
	}
	
	
}

</script>

</body>
</html>