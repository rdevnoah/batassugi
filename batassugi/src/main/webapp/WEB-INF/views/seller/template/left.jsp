<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav id="sidebar">
	<div class="sidebar-header">
		<h3>Spider : 밭아쓰기</h3>
		<strong>판매자</strong>
		<%-- <strong><img src="${pageContext.request.contextPath}/resources/img/profile_img/${mvo.image}" width="50px"></strong> --%>
	</div>

	<ul class="list-unstyled components">
		<li>		
			<a href="${pageContext.request.contextPath}/"> <i class="glyphicon glyphicon-home"></i>홈으로</a> 
		</li>
		<li>		
			<a href="${pageContext.request.contextPath}/seller/seller_Home"> <i class="glyphicon glyphicon glyphicon-pushpin"></i>판매자 메인</a>
		</li>
		<li>		
			<a href="${pageContext.request.contextPath}/seller/myinfoView"> <i class="glyphicon glyphicon-user"></i>정보수정</a> 
		</li>
		<li>
		<a href="registerFarmForm"> <i class="glyphicon glyphicon-leaf"></i>농지등록</a>
			<ul class="collapse list-unstyled" id="homeSubmenu">
				<li><a href="#">Home 1</a></li>
				<li><a href="#">Home 2</a></li>
				<li><a href="#">Home 3</a></li>
			</ul>
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
