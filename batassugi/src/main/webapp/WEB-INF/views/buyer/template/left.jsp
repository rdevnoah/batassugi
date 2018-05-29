<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<nav id="sidebar">
	<div class="sidebar-header">
		<h3>구매자 페이지</h3>
		<strong>구매자</strong>
	</div>

	<ul class="list-unstyled components">
		
		<li>		
			<a href="${pageContext.request.contextPath}/"> <i class="fa fa-home fa-lg"></i> 홈으로</a> 
		</li>
		<li>
			<c:choose>
				<c:when test="${applySellerVo.applyState == '미처리'}">
					<a id="applyingSeller"> <i class="fa fa-user-plus fa-lg"></i>판매자신청 정보보기</a>
				</c:when>
				<c:when test="${applySellerVo.applyState == '승인거절'}">
					<a id="applySeller" class="applySeller"> <i class="fa fa-user-plus fa-lg"></i>판매자신청</a>
					<a id="applyingSeller"> <i class="fa fa-user-plus fa-lg"></i>판매자신청 정보보기</a>
				</c:when>
				<c:otherwise>
					<a id="applySeller" class="applySeller"> <i class="fa fa-user-plus fa-lg"></i>판매자신청</a>
				</c:otherwise>
			</c:choose>
		</li>
		<li>		
			<a href="${pageContext.request.contextPath}/buyer/buyer_Home"> <i class="fa fa-fort-awesome fa-lg"></i>내밭리스트</a> 
		</li>
		
		<li>		
			<a href="${pageContext.request.contextPath}/buyer/myinfoView"> <i class="glyphicon glyphicon-user"></i>정보수정</a>  
		</li>
		
		
		<!-- <li class="active">
		<a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false"> <i class="glyphicon glyphicon-home"></i>
				Home
		</a>
			<ul class="collapse list-unstyled" id="homeSubmenu">
				<li><a href="#">Home 1</a></li>
				<li><a href="#">Home 2</a></li>
				<li><a href="#">Home 3</a></li>
			</ul>
		</li>
		
		
		<li>
		<a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
				<i class="glyphicon glyphicon-duplicate"></i> Pages
		</a>
			<ul class="collapse list-unstyled" id="pageSubmenu">
				<li><a href="#">Page 1</a></li>
				<li><a href="#">Page 2</a></li>
				<li><a href="#">Page 3</a></li>
			</ul></li>
		<li><a href="#"> <i class="glyphicon glyphicon-link"></i>
				Portfolio
		</a></li>
		<li><a href="#"> <i class="glyphicon glyphicon-paperclip"></i>
				FAQ
		</a></li>
		<li><a href="#"> <i class="glyphicon glyphicon-send"></i>
				Contact
		</a></li> -->
	</ul>

<!-- 	<ul class="list-unstyled CTAs">
		<li><a
			href="https://bootstrapious.com/tutorial/files/sidebar.zip"
			class="download">Download source</a></li>
		<li><a href="https://bootstrapious.com/p/bootstrap-sidebar"
			class="article">Back to article</a></li>
	</ul> -->
</nav>
