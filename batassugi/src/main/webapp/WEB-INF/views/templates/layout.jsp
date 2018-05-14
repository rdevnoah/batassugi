<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 이 파일은 layout입니다. layout 변경시에는 SL 이상욱에게 반드시 확인을 맡습니다.-->
<!-- 
	변경 내역: 변경내역은 이곳에 기록하세요
	변경인            변경날짜             변경사유
	=================================================================================
    Team Spider       2018.05.12           최초작성
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- Bootstrap v3.3.7 --%>
<link href="css/bootstrap-ukyi.css" rel="stylesheet">
<%-- Bootstrap-dialog --%>
<link href="css/bootstrap-dialog.css" rel="stylesheet">
<%-- Animate --%>
<link href="css/animate.css" rel="stylesheet">
<%-- Favicon --%>
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon">
<%-- Spider (추가css설정 css파일)--%>
<link href="css/spider.css" rel="stylesheet">


<%-- Jquery v3.3.1 --%>
<script src="js/jquery-3.3.1.js"></script>
<%-- Bootstrap v3.3.7 --%>
<script src="js/bootstrap.js"></script>
<%-- Bootstrap-dialog --%>
<script src="js/bootstrap-dialog.js"></script>
<%-- Parallax --%>
<script src="js/parallax.js"></script>
<%-- Font-awesome v4.7.0 --%>
<script src="https://use.fontawesome.com/a5d5d71388.js"></script>

<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
	<%-- header --%>
	<tiles:insertAttribute name="header" />

	<%-- main --%>
	<tiles:insertAttribute name="main" />

	<%-- footer --%>
	<tiles:insertAttribute name="footer" />
</body>
<script>
$(function(){
	var $closeSide = $('#closeSide'),
		$openSide = $('#openSide'),
		$mySidenav = $('#mySidenav'),
		$parallax = $('#parallax'),
		$board = $('#board'),
		$a = $('a');
	
	$a.on('mouseenter',function(){
		$(this).addClass('animated pulse');
	}).on('mouseleave',function(){
		$(this).removeClass('animated pulse');
	});
	
	$openSide.on('click',function(){
		$mySidenav.css('width','15%');
	});

	$closeSide.on('click',function(){
		$mySidenav.css('width','0%');
	});
	
});
</script>
</html>