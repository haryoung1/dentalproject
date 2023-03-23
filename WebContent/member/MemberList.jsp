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
<link href="${conPath }/css/noticeList.css" rel="stylesheet">
<style>
#content_form {
	height: 470px;
	margin: 30px auto 0px;
}

#content_form table tr {
	height: 10px;
}
</style>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<div id="wrap">
		<table>
			<caption>전체회원보기</caption>
			<tr>
				<th>이름</th>
				<th>ID</th>
				<th>생년월일</th>
				<th>가입일</th>
			</tr>
			<c:if test="${memberList.size() eq 0 }">
				<tr>
					<td colspan="4">가입한 회원이 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${memberList.size() != 0 }">
				<c:forEach var="dto" items="${memberList }">
					<tr>
						<td>${dto.mname }</td>
						<td>${dto.mid }</td>
						<td><fmt:formatDate value="${dto.mbirth }" pattern="YYYY-MM-dd" />
						<td><fmt:formatDate value="${dto.mrdate }"
								pattern="YY-MM-dd hh:mm(a)" /></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<!-- 페이징처리 -->
		<div class="paging">
			<c:if test="${startPage > BLOCKSIZE }">
				[ <a href="${conPath }/noticeList.do?pageNum=${startPage-1}"> 이전
				</a> ]
			</c:if>
			<c:forEach var="i" begin="${startPage }" end="${endPage }">
				<c:if test="${i eq pageNum }">
					<b> [ ${i } ] </b>
				</c:if>
				<c:if test="${i != pageNum }">
					[ <a href="${conPath }/noticeList.do?pageNum=${i}"> ${i } </a> ]
				</c:if>
			</c:forEach>
			<c:if test="${endPage<pageCnt }">
			  [ <a href="${conPath }/noticeList.do?pageNum=${endPage+1}"> 다음
				</a> ]
			</c:if>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>