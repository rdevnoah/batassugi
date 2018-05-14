<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- 이 파일은 header입니다. header에는 별도의 외부링크 추가 금지--%>
<div id="mySidenav" class="sidenav">
	<a id="closeSide" href="javascript:void(0)" class="closebtn">&times;</a>
	<a>메뉴1</a>
	<a>메뉴2</a>
	<a>메뉴3</a>
	<a>메뉴4</a>
</div>
<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<img src="img/logo.png" class="img-responsive">
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a id="board">게시판</a></li>
			</ul>
			<!-- 
			<ul class="nav navbar-nav navbar-right">
				<li><a id="openSide">사이드메뉴</a></li>
			</ul>
			-->
			
 
		</div><%-- collapse navbar-collapse --%>
	</div><%-- container --%>
</nav> <%-- navbar navbar-default --%>