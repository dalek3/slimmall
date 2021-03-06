<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>슬립몰</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/common.css' />" />
<style type="text/css">
#product-list {
	list-style-type: none;
	padding: 0;
}
#product-list li {
	width: 24.4%;
	display: inline-block;
}
#product-list li img {
	width: 100%;
}
</style>
</head>
<body>
	<div class="w3-border-bottom">
		<c:import url="/header.do" />
	</div>
	<div class="w3-border-bottom w3-border-green">
		<c:import url="/nav.do?menu=0" />
	</div>
	<div>
		<img class="block-center" alt="" src="./image/jane2.png">
		<section class="block-center w3-container">
			<div class="w3-text-grey" id="jeans">
				<p>${fn:length(productVOs)} items</p>
			</div>
			<form action="main.do" method="POST">
				<p>
					<input type="text" name="keyword" placeholder="검색어 입력..">
					<input type="submit" value="검색">
				</p>
			</form>	
			<ul id="product-list" class="w3-grayscale">
				<c:forEach var="productVO" items="${productVOs}">
				<li>
					<a href="productOrder.do?idx=${productVO.idx}">
						<img src="<c:url value='http://localhost/img/${productVO.imageName}' />">
						<p>
							${productVO.name}<br> 
							<b><fmt:formatNumber value="${productVO.price}" pattern="#,###" />원</b>
						</p>
					</a>
				</li>
				</c:forEach>
			</ul>
		</section>
	</div>
	<c:import url="/footer.do" />
</body>
</html>