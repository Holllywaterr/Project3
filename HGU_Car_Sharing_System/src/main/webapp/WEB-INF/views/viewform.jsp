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
	  
	  @import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
 
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

<body>

<div style="margin:50px; padding: 30px; background-color: darkgray; border-radius: 40px;">
      <div class="panel-heading"> 
          <div style="position: absolute; left: 80%; background-color: cyan; width: 40px; 
          border-radius:75px;">${u.category}</div>
      </div>
          <div class="panel-body" style="text-align:left; padding-top: 40px;">
              <div>${u.departurePoint} -> ${u.arrivalPoint}</div>
              <div>${u.departureDay} ${u.departureTime} 출발</div>
              <div>현재 인원(${u.reservedSeat}/${u.maxSeat})</div>
              <div>${u.bank} ${u.bankAccount}</div>
              <div>${u.phone}</div>
		   	<button type="button" onclick="location.href='../editform/${u.seq}'">수정하기</button>
		   	<button type="button" onclick="location.href='../deleteok/${u.seq}'">삭제하기</button>
			<button type="button" onclick="history.back()">돌아가기</button>
		   	<button type="button" onclick="location.href='../seatok'">탑승하기</button>
		   	<button type="button" onclick="location.href='../seatoutok'">탑승취소</button>
          	
          </div>
  </div>


<!-- 
<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}"/>
<c:set var="string" value="${fn:substring(requestScope['javax.servlet.forward.servlet_path'], 12, fn:length(path))}"/>
${string}
<c:forEach items="${list}" var="u">
	<c:if test="${u.seq eq string}">
	<div style="margin:50px; padding: 30px; background-color: darkgray; border-radius: 40px;">
      <div class="panel-heading"> 
          <div style="position: absolute; left: 80%; background-color: cyan; width: 40px; 
          border-radius:75px;">${u.category}</div>
      </div>
          <div class="panel-body" style="text-align:left; padding-top: 40px;">
              <div>${u.departurePoint} -> ${u.arrivalPoint}</div>
              <div>${u.departureDay} ${u.departureTime} 출발</div>
              <div>현재 인원(${u.reservedSeat}/${u.maxSeat})</div>
              <div>${u.bank} ${u.bankAccount}</div>
              <div>${u.phone}</div>
          </div>
  </div>
	</c:if>
</c:forEach>
-->

<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>