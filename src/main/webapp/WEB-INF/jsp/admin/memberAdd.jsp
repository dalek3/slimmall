<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>슬립몰</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/common.css' />" />
</head>
<body>
	<div class="w3-border-bottom">
		<c:import url="/admin/header.do" />
	</div>
	<div class="w3-border-bottom w3-border-blue">
		<c:import url="/admin/nav.do?menu=1" />
	</div>
	<div>
		<section class="block-center w3-container">
			<h4>맴버 추가 : </h4>
			<form action="addMember.do" method="post">
				<p>아이디 : </p>
				<input type="text" name="username">
				<p>비밀번호 : </p>
				<input type="password" name="password">
				<p>이메일 : </p>
				<input type="text" name="email">
				<p>전화번호 : </p>
				<input type="text" name="phone">
				<p>주소 : </p>
				<input type="text" name="address">
				<p>
					<input type="submit" value="추가" class="w3-button w3-black">
				</p>
			</form>
		</section>
	</div>
	<c:import url="/admin/footer.do" />	
</body>
</html>