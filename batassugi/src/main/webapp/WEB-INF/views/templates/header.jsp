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
</div> <%-- mySidenav --%>

<div class="container">
   <%-- 가장 위쪽 헤더 --%>
	<div class="row">
	    <div class="col-xs-4 mainLogo">
			<a href="${pageContext.request.contextPath}/">
				<img src=" ${pageContext.request.contextPath}/resources/img/logo.png" class="img-responsive mainLogo" />
			</a>
		</div><!--
	    --><div class="col-xs-8 vcenter">
	    	<c:choose>
			<c:when test="${sessionScope.mvo==null}">
	         <ul>
	            <li style="border-left:0px !important;"><a class="choice" href="${pageContext.request.contextPath}/">Home</a></li>
	            <li><a>사이트소개</a></li>
	            <li><a href="${pageContext.request.contextPath}/home/crops_dictionary">농작물사전</a></li>
	            <li><a href="${pageContext.request.contextPath}/home/registerView">회원가입</a></li>
	            <li><a href="${pageContext.request.contextPath}/home/loginView">로그인</a></li>            
	         </ul>   
	         </c:when>
	         <c:otherwise>
	         <ul>
	         
	            <li style="border-left:0px !important;"><a href="${pageContext.request.contextPath}/" class="choice">Home</a></li>
	            <li><a>사이트소개</a></li>
	            <li><a>교환게시판</a></li>
	            <li><a>대여신청</a></li>
 		            <c:if test="${sessionScope.mvo.memberVo.memberLevel == '관리자'}">
		            	<li><a href="${pageContext.request.contextPath}/admin_Home">마이페이지</a></li>	            
		            </c:if>
		            
		            <c:if test="${sessionScope.mvo.memberVo.memberLevel == '판매자'}">
		            	<li><a href="${pageContext.request.contextPath}/seller_Home">마이페이지</a></li>	            
		            </c:if>
		             <c:if test="${sessionScope.mvo.memberVo.memberLevel == '초급'||sessionScope.mvo.memberVo.memberLevel == '중급'||sessionScope.mvo.memberVo.memberLevel == '고급'}">
		            	<li><a href="${pageContext.request.contextPath}/buyer_Home">마이페이지</a></li>	            
		            </c:if>
	            <li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>            
	         </ul>
	         </c:otherwise>
	         </c:choose>   
	    </div> <%-- col-xs-8 vcenter --%>
   </div>  <%-- row --%>
</div> <%-- container --%>
