<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>


<style>

.reg{
 width: 640px;
 height: 260px;
 margin: 150px auto 0px auto;
 border: 3px groove #FFFF9F;
 border-radius: 10px;
 font-family: sans-serif;

}

.reg h3{
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

button{
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
    text-align: center;
    margin-left: 220px;

}

</style>
</head>

<body>
<form:form action="userLogin" method="POST">

<div class="reg">
<h3>Login</h3>

<div class="input">
<label>Email</label>
<input name="email" type="text" placeholder="please type your email"/>
</div>

<div class="input">
<label>Password</label> 
<input  name="password" type="password" placeholder="Please type your password"/>

</div>
<button  type="submit">Login</button>
</div>


</form:form>
</body>
</html>