<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap {
	width: 900px;
	margin: 0 auto;
	overflow: hidden;
	margin: 0 auto;
}

#intro .whitening {
	float: center;
	width: 700px;
	text-align: center;
	line-height: 350px;
	margin-left: 7px;
	margin: 6px;
}
</style>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="wrap">
		<div id="whitening">
			<p>
				<img src="image/미백1.PNG"> 
				<img src="image/미백2.PNG"> 
			</p>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>