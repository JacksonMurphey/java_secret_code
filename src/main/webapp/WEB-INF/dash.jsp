<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" 
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
<jsp:include page="base.jsp"></jsp:include>



	<div class="container">
	
		<form method="POST" action="/check" class="m-2">
			<c:out value="${ message }"/>
		
			<div class="form-group m-2">
				<label for="code">What is the Code?</label>
				<input type="test" name="code" class="form-control">
			</div>
			<input type="submit" value="Try Code" class="btn btn-success m-2">
		</form>
	</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>