<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- 메인영역 입니다 --%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/123.jpg">
			</div>
			<a>게시판들어가기</a>
			<c:forEach begin="1" end="10" var="i">
				<h1><a>${i}</a></h1>
			</c:forEach>
		</div> <%-- col-xs-offset-2 col-xs-12 --%>
	</div> <%-- row main --%>
	<div class="row">
		<div class="col-xs-12">
			<h3></h3>
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/1234.jpg">
			</div>
			<c:forEach begin="1" end="10" var="i">
				<h1>${i}</h1>
			</c:forEach>
		</div> <%-- col-xs-12 --%>
	</div> <%-- row --%>
</div> <%-- container --%>