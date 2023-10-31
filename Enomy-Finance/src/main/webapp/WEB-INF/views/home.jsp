<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    <style>
    
.body{


justify-content:center;
font-family: sans-serif;

}

.container{

height: 200px;
text-align: center;
border: 2px solid #f2f2f2;
width: 600px;
margin-left: 30%;


}

h1{

border: 1px solid #FFF600;
padding: 10px 0;
}

a{
    text-decoration: none;
    width: 100%;
    padding: 8px 4px;
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
a:hover{
  background: #FFFF9F;
}
    
    </style>
    </head>
    <body>
    <div class="container">
        <h1>Welcome To Enomy-Finance!</h1>
        <p>Unlocking Financial Possibilities<br> Your Path to Home, Savings, and Investment Success!</p>
        <a href="login">Login</a>
       
        <a href="register">Register Now</a>
    </div>
       
    </body>
</html>
