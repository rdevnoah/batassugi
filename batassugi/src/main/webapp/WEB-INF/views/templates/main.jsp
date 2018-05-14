<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- 메인영역 입니다 --%>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/배경1.jpg">
			</div>
		</div>
	</div>
</div> <%-- container --%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<a>게시판들어가기</a>
			<c:forEach begin="1" end="10" var="i">
				<h1><a>${i}</a></h1>
			</c:forEach>
		</div> <%-- col-xs-offset-2 col-xs-12 --%>
	</div> <%-- row --%>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/배경2.jpg">
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach begin="1" end="10" var="i">
				<h1>${i}</h1>
			</c:forEach>
		</div> <%-- col-xs-12 --%>
	</div> <%-- row --%>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/배경3.jpg">
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach begin="1" end="10" var="i">
				<h1>${i}</h1>
			</c:forEach>
		</div> <%-- col-xs-12 --%>
	</div> <%-- row --%>
</div>

