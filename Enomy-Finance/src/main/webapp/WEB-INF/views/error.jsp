<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Error</title>
</head>

<style>


body{
justify-content: center;

}

h1{
  color: Red;
  text-align: center;

}


.link-btn{
    text-align: center;
}

a{text-decoration: none;
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
    margin-left: 20px;
}



</style>
<body>

<h1>Invalid Username and Password !</h1>

<div class = "link-btn">
<a href = "login"> Please Try Again</a>
<a href = "/project"> Go to home</a>
</div>
</body>
</html>