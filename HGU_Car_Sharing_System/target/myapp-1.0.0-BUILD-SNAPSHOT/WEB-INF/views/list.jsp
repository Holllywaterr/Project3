<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
<tr>
	<th>ID</th>
	<th>Category</th>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>

<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">글수정</a></td>
		<td><a href="deleteok/${u.seq}">글삭제</a></td>
		
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>

</body>
</html>