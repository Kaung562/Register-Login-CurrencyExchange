<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Currency Exchange</title>

<style>

.cur-exchange{
 width: 640px;
 height: 250px;
 margin: 150px auto 0px auto;
 border: 3px groove #FFFF9F;
 border-radius: 10px;
 font-family: sans-serif;

}

h3{

text-align: center;
}

.input{
text-align: center;
margin-left:150px;
width: 300px;
padding: 7px;
border: 1px solid #ddd;
border-radius: 5px;
outline: 0;
box-shadow: inset 1px 1px 1px rgba(0,0,0,0.3);
}

.input label{
margin-bottom: 5px;
}

button{
   
    width: 100px;
    padding: 3px;
    background: #FFF600;
    color: #000;
    font-size: 15px;
    border: 1px solid #FFF600;
    border-radius: 6px;
    margin-top: 10px;
    cursor: pointer;
    transition: background 0.5s;
    
}

button:hover{
  background: #FFFF9F;
}
  

.result{

text-align: center;

}

.result input{

margin-top: 15px;
width: 250px;
font-size: 15px;
border: 1px solid #FFF600;

}
</style>
</head>
<body>

<form:form action="convert" method="POST">

<div class="cur-exchange">
<h3>EXCHANGE YOUR CURRENCY WITH US!</h3>

<div class="input">
<label>Amount (USD)</label>
<input name="amount" id="amount"/>
<br>


<label>Convert To</label>
<br>

<select name="selectedCurrency">
<c:forEach items="${listCurrency}" var="currency">
  <option value="${currency.exchangeRate}">${currency.currencyName}</option>

</c:forEach>
</select>

</div>
<!-- Dropdown -->
<br>
<div class="result">
<button type="submit">Exchange</button><br>
<input name="amountConverted" id="amountConverted" type="text" value="Exchanged amount:  ${amountConverted}" readonly>
</div>
</div>
</form:form>


</body>
</html>