<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/img/배경1.jpg" alt="Los Angeles">
        <div class="carousel-caption">
          <h3>강원도 강릉</h3>
          <p>정갈한 밭을 바라보며 수확할 열매를 떠올려보세요</p>
        </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/img/배경2.jpg" alt="Chicago" >
        <div class="carousel-caption">
          <h3>경상남도 남해</h3>
          <p>소와 함께 쟁기질로 받을 일구어 보세요</p>
        </div>
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/img/배경3.jpg" alt="New York" >
        <div class="carousel-caption">
          <h3>경기도 이천</h3>
          <p>저녁 노을과 함께 벼가 익어가는 거리를 걸어보세요</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="fa fa-chevron-right fa-3x"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<!-- 사이트 소개 or 로그인시 추천 농장 -->
<div class="container main">
  <h3>안녕하세요 밭아쓰기 입니다!</h3>
  <p id="site_move">밭아쓰기는 회원가입 후 사용가능합니다. <a href="${pageContext.request.contextPath}/registerView"> 회원가입</a>을 클릭해주세요. 
  자세한 사이트 소개는 <a href="${pageContext.request.contextPath}/home/introduction_website">사이트 소개</a>를 클릭해주세요.</p>
	
	<!-- 사이트 간략 소개 -->
	<div class="container main_intro">
		<div class="row">
					<!-- 첫번째 컨텐츠 -->
	  <div class="col-sm-3 main_content" id="main_content1">
	  	<div class="main_content_heading">
	  		<span class="main_icon"><img id="img1" src="${pageContext.request.contextPath}/resources/img/로고.png" height="76px;"></span><br>
     		<span class="main_title">밭아쓰기란?</span>
	  	</div>
	  	<div class="main_content_body">
	  	 <p id="main_content_body">귀농을 꿈꾸는 도시인<br>
	  	 일손이 부족한 농촌<br>
	  	 모두를 만족시킬 밭 대여 시스템</p>
	    </div>
	  </div>
	  <!-- 두번째 컨텐츠 -->
	  <div class="col-sm-3 main_content">
	  	<div class="main_content_heading">
	  		<span class="main_icon"><i class="fa fa-globe fa-4x" aria-hidden="true"></i></i></i></span><br>
	      	<span class="main_title">농자천하지대본</span>
	  	</div>
	  	<div class="main_content_body">
	  	<p id="main_content_body">농사는 세상을 살아가는 근본<br>
	  	 누구나 쉽게 농사를 접근하고<br>
	  	 농업사회를 즐겁게 유지합니다</p>
	  	</div>
	  </div>
	  <!-- 세번째 컨텐츠 -->
	  <div class="col-sm-3 main_content" id="main_content2">
	  	<div class="main_content_heading">
	  		<span class="main_icon"><img id="img2" src="${pageContext.request.contextPath}/resources/img/아이콘.png" height="76px;"></span><br>
      		<span class="main_title">밭을 대여합니다!</span>
	  	</div>
	  	<div class="main_content_body">
	  	<p id="main_content_body">품앗이, 일손이 필요할 때<br>
	  	 일손을 보충하면서<br>
	  	 사라져가는 '정(情)'도 보충하세요</p>
	  </div>
	  </div>
		  <!-- 네번쨰 컨텐츠 -->
		  <div class="col-sm-3 main_content">
		  	<div class="main_content_heading">
		  		<span class="main_icon"><i class="fa fa-sign-language fa-4x" aria-hidden="true"></i></span><br>
	     		<span class="main_title">귀농! 어렵지 않아요</span>
		  	</div>
		  	<div class="main_content_body">
		  		<p id="main_content_body">귀농, 무작정 도전하기에<br>
	  	 			부담이 되신다면<br>
	  	 			일단 텃밭을 공유해보세요</p>
		  	</div>
		  </div>
		</div><%--사이트 간략 소개 row --%>
	</div><%--사이트 간략 소개 --%>
</div><%--사이트소개 --%>

<script>
$(document).ready(function() {
	$("#main_content1").mouseover(function() {
		$("#img1").attr("src","${pageContext.request.contextPath}/resources/img/로고2.png");
	});
	$("#main_content1").mouseout(function() {
		$("#img1").attr("src","${pageContext.request.contextPath}/resources/img/로고.png");
	});
	
	$("#main_content2").mouseover(function() {
		$("#img2").attr("src","${pageContext.request.contextPath}/resources/img/아이콘2.png");
	});
	$("#main_content2").mouseout(function() {
		$("#img2").attr("src","${pageContext.request.contextPath}/resources/img/아이콘.png");
	});
});
</script>