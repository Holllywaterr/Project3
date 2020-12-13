<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.myapp.board.BoardDAO,com.mycompany.myapp.board.BoardVO, java.util.*"%>	
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	  <title>View form</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	  <style>
	    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
	    .navbar {
	      margin-bottom: 50px;
	      border-radius: 0;
	    }
	    
	    /* Remove the jumbotron's default bottom margin */ 
	     .jumbotron {
	      margin-bottom: 0;
	    }
	   
	    /* Add a gray background color and some padding to the footer */
	    footer {
	      background-color: #f2f2f2;
	      padding: 25px;
	    }
	    
	    button.active { background-color: yellow !important; }
	    button{ 
	    width: 100px; 
	    border-radius:20px;
	    background-color: cyan;
	    }
	    .panel-body{
	    	font-family:'Jeju Hallasan', cursive;
	    	font-size: large;
	    	line-height: 1.8;
	    	
	    }
	    
	    button{
			    font-family:'Jeju Hallasan', cursive;
				  background-color:#AFEEEE;
				  color: black;
				  padding: 5px 8px;
				  text-align: center;
				  text-decoration: none;
				  display: inline-block;
				  border-radius: 12px;
	    }
	    
	    button:hover {
			  color:#FFB6C1 ;
			  text-decoration: underline;
			  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
			}
			
			.h1{
					text-shadow: 2px 2px 5px red;
			}
	  </style>
<script>
function go(loc, obj){

	document.getElementById("category").value = loc ;
	
    // NEW
    if (document.querySelector(".active")) {
        document.querySelector(".active").className = ""
            }
    obj.className = obj.className + " active";
}

</script>
	</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Online Store</h1>      
    <p>Mission, Vission & Values</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">HisCar</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">게시글</a></li>
        <li><a href="#">만료된 게시글</a></li>
        <li><a href="#">채팅</a></li>
        <li><a href="add">약속 잡기</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

<body>


<div style="margin:50px; padding: 30px; background-color: darkgray; border-radius: 40px;">
      <form:form commandName="u" method="POST" action="../editok">
		<form:hidden path="seq"/>
	<form:input path="category" style="display:none;"/>
  <table>
  	<tr><td><button type="button" id="car" onclick="go('카풀', this)">카풀</button></td>
  		<td><button type="button" id="taxi" onclick="go('택시', this)">택시</button></td></tr>
    <tr><td>출발지</td><td><form:input path="departurePoint"/></td></tr>
    <tr><td>도착지</td><td><form:input path="arrivalPoint"/></td></tr>
    <tr><td>출발일자</td><td><form:input path="departureDay"/></td></tr>
    <tr><td>출발시간</td><td><form:input path="departureTime"/></td></tr>
    <tr><td>최대인원</td><td><form:input path="maxSeat" min="1" max="10"/></td></tr>
    <tr><td>입금계좌</td><td><form:input path="bank"/>은행<br/>
    <form:input path="bankAccount"/></td></tr>
    <tr><td>연락처</td><td><form:input path="phone"/></td></tr>
    <tr><td>Detail</td><td><form:textarea cols="50" rows="5" path="detail"/></td></tr>
  </table>
			<button type="button" onclick="history.back()">돌아가기</button>
		   	<button type="submit" >수정하기</button>
	</form:form>
          	
          </div>

<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>