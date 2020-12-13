<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="com.mycompany.myapp.board.BoardDAO,com.mycompany.myapp.board.BoardVO, java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	
	<link rel="stylesheet" href="form.css">
	
	  <title>Bootstrap Example</title>
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
	    .panel-body{
	    	font-family:'Jeju Hallasan', cursive;
	    	font-size: large;
	    	line-height: 1.8;
	    	
	    }
	    
			
			.h1{
					text-shadow: 2px 2px 5px red;
			}
	  </style>
	  <script>
		
	  </script>
	</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>HISCAR</h1>      
    
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

<div>
<div class="container">    
    <div class="row">
<c:forEach items="${list}" var="u">
      <c:set var="sum" value="${sum+1}"/>
        <div class="col-sm-4" style="margin-bottom:50px;">
  <button type="button" style="width: 100%; border-radius:20px;" onclick="location.href='view/${u.seq}'">
      <div class="panel-heading"> 
          <div style="text-align:center; background-color: cyan; width: 40px; 
          border-radius:75px; float: left;">${sum}</div>
          <div style="position: absolute; left: 75%; background-color: cyan; width: 40px; 
          border-radius:75px;">${u.category}</div>
      </div>
          <div class="panel-body" style="text-align:left; padding-top: 40px;">
              <div>${u.departurePoint} -> ${u.arrivalPoint}</div>
              <div>${u.departureDay} ${u.departureTime} 출발</div>
              <div>현재 인원(${u.reservedSeat}/${u.maxSeat})</div>
              <div>${u.bank} ${u.bankAccount}</div>
              <div>${u.phone}</div>
          </div>
  </button>
        </div>
</c:forEach>
        </div>
    </div><br>

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

