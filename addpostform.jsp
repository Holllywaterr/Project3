<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
        <li><a href="list">게시글</a></li>
        <li><a href="#">만료된 게시글</a></li>
        <li><a href="#">채팅</a></li>
        <li class="active"><a href="add">약속 잡기</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
<div style="margin:50px; padding: 30px; background-color: darkgray; border-radius: 40px;">
<form action="addok" method="post">
	<input type="text" id="category" name="	category" readonly style="display:none;">
  <table>
  	<tr><td><button type="button" id="car" onclick="go('카풀', this)">카풀</button></td>
  		<td><button type="button" id="taxi" onclick="go('택시', this)">택시</button></td></tr>
    <tr><td>출발지</td><td><input type="text" name="departurePoint"/></td></tr>
    <tr><td>도착지</td><td><input type="text" name="arrivalPoint"/></td></tr>
    <tr><td>출발일자</td><td><input type="date" name="departureDay"/></td></tr>
    <tr><td>출발시간</td><td><input type="time" name="departureTime"/></td></tr>
    <tr><td>최대인원</td><td><input type="number" name="maxSeat" min="1" max="10"/></td></tr>
    <tr><td>입금계좌</td><td><input type="text" name="bank"/>은행<br/>
    <input type="text" name="bankAccount"/></td></tr>
    <tr><td>연락처</td><td><input type="tel" name="phone"/></td></tr>
    <tr><td>Detail</td><td><textarea cols="50" rows="5" name="detail"/></textarea></td></tr>
  </table>
  <div>
	<button type="button" onclick="location.href='list'">작성취소</button>
	<button type="submit">목록추가</button>
	</div>
</form>
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

<!-- 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="addok" method="post">
	<table id="edit">
		<tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
		<tr><td>제목</td><td><input type="text" name="title"/></td></tr>
		<tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>내용</td><td><textarea cols="50" rows="5" name="content"/></textarea></td></tr>
	</table>
	<button type="button" onclick="location.href='list'">목록보기</button>
	<button type="submit">등록하기</button>
</form>
</body>
</html>
 -->