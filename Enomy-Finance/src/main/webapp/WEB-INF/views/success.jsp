<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<script src="https://kit.fontawesome.com/190c5a71e5.js" crossorigin="anonymous"></script>
<style>
*{
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'sans-serif';

}

body{

 height: 100vh;
 display: flex;
 justify-content: center;

}

.container{

   width: 300px;
   height: 40vh;
   margin-top: 15vh;
   border-radius: 10px;
   box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.3);
   text-align: center;
   
  
   

}

.top{

  height: 20vh;
  width: 100%;
  background-color: #90EE90;
  border-radius: 5px;


}

.bottom{

  margin-bottom: 20px;
}

.fa-solid{

font-size: 40px;
margin-top: 5vh;


}

h3{
  margin-top: 20px;
}

p{

 margin-top: 5vh;
 padding: 0px 10px;
 color: #333;

}

a{

    text-decoration: none;
    width: 200px;
    padding: 3px 20px 3px 20px;
    background: #FFF600;
    color: #000;
    font-size: 15px;
    border: 1px solid #FFF600;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.5s;
    margin: 3px 3px;
     
}

a:hover{

background: #FFFF9F;

}


</style>

<body>

<div class="container">
<div class="top">

<i class="fa-solid fa-check"></i>
<h3>SUCCESS</h3>

</div>
<div class="bottom">
<p>Congratulation, you have been successfully registered.</p>

</div>
<a href="profile">OK</a>
</div>

</body>
</html>