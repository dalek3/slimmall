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
		<c:import url="/admin/nav.do?menu=3" />
	</div>
	<div>
		<section class="block-center w3-container">
			<h4>상품 추가</h4>
			<form action="addProduct.do" method="post" enctype="multipart/form-data" >
				<p>
					<label for="name">이름: </label>
					<input type="text" name="name">	
				</p>
				<p>
					<label for="description">설명: </label>
					<input type="text" name="description">	
				</p>
				<p>
					<label for="price">가격: </label>
					<input type="number" name="price">	
				</p>
				<p>
					<label for="qty">수량: </label>
					<input type="number" name="qty">	
				</p>
				<p>
					<label for="categoryId">카테고리</label>
					<input type="number" name="categoryIdx">	
				</p>
				<p>
					<label for="imageFile">이미지: </label>
					<input type="file" name="imageFile" accept="image/*">	
				</p>
				<p>
					<input type="submit" value="추가">
				</p>
			</form>
		</section>
	</div>
	<c:import url="/admin/footer.do" />	
</body>
</html>