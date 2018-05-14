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
			<a>
				<img src="img/logo.png" class="img-responsive mainLogo" />
			</a>
		</div><!--
	    --><div class="col-xs-8 vcenter">
	         <ul>
	            <li style="border-left:0px !important;"><a class="choice">Home</a></li>
	            <li><a>사이트소개</a></li>
	            <li><a>농작물사전</a></li>
	            <li><a>회원가입</a></li>
	            <li><a>로그인</a></li>            
	         </ul>   
	    </div> <%-- col-xs-8 vcenter --%>
   </div>  <%-- row --%>
</div> <%-- container --%>
