<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><tiles:insertAttribute name="seller_title" ignore="true" /></title>
<%-- Bootstrap v3.3.7 --%>
<%-- <link href="${pageContext.request.contextPath}/resources/css/bootstrap-ukyi.css" rel="stylesheet"> --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%-- Bootstrap-dialog --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css" rel="stylesheet">
<%-- Animate --%>
<link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
<%-- Favicon --%>
<link href="${pageContext.request.contextPath}/resources/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
<!-- Our Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/seller.css" rel="stylesheet">
<!-- fullCalendar CSS -->
<link href='${pageContext.request.contextPath}/resources/css/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/css/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />


<script src='${pageContext.request.contextPath}/resources/js/fullcalendar/moment.min.js'></script>
<%-- Jquery v3.3.1 --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- fullcalendar JS--%>
<script src='${pageContext.request.contextPath}/resources/js/fullcalendar/fullcalendar.min.js'></script>
<%-- Bootstrap v3.3.7 --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- Bootstrap-dialog --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<%-- Parallax --%>
<script src="${pageContext.request.contextPath}/resources/js/parallax.js"></script>
<%-- Font-awesome v4.7.0 --%>
<script src="https://use.fontawesome.com/a5d5d71388.js"></script>



</head>
<body>
<div class="wrapper">
		
		<%-- 사이드바 --%>
		<tiles:insertAttribute name="seller_left" />
		
	<div id="content">
		<%-- 헤더 --%>
		<tiles:insertAttribute name="seller_header" />
		<%-- 본문 --%>
	     <tiles:insertAttribute name="seller_main" />
  	</div>
</div>

	

    
</body>

<script type="text/javascript">
$(document).ready(function () {
	$('#sidebarCollapse').on('click', function () {
		$('#sidebar').toggleClass('active');
		$(this).toggleClass('active');
	});
});


	 
	
	
</script>
</html>