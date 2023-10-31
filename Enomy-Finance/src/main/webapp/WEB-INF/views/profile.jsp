<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<script src="https://kit.fontawesome.com/190c5a71e5.js" crossorigin="anonymous"></script>

<style>


* {
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'Poppins', sans-serif;

}

.profile{

  height: 300px;
  width: 600px;
  background-color: #FFF600;
  border-radius: 20px;
  align-items: center;
  margin: 20px auto auto 400px;

}


.icon{

  
  padding: 3px;
  font-size: 140px;
  justify-content: center;

  
}

.icon .fa-solid{
   height: 100%;
   width: 100%;
   object-fit: cover;
   text-align: center;
}



.profile h3{

  text-align: center;
}
.profile p{

text-align: center;
margin-bottom: 20px;

}

.profile a{
    text-decoration: none;
    margin-left: 20px;
    width: 200px;
    padding: 7px;
    background: #FFFFFF;
    color: #000;
    font-size: 15px;
    border: 1px solid #FF7600;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.5s;  
}

.profile a:hover{

background: #FFF600;
}

.btn{
 text-align: center;

}
</style>
</head>
<body>

<div class="profile">
 <div class="icon">
 <i class="fa-solid fa-circle-user"></i>
 </div>
<h3> You </h3>
<p>Member of Enomy-Finance</p>

<div class="btn">
<a href="/project"> Logout </a>
<a href="currency"> Exchange Currency </a>
</div>
</div>

</body>
</html>