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
<title><tiles:insertAttribute name="admin_title" ignore="true" /></title>
<!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<%-- Favicon --%>
<%-- <link href="${pageContext.request.contextPath}/resources/favicon.ico" rel="shortcut icon" type="image/x-icon"> --%>

<!-- Our Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/admin.css" rel="stylesheet">

<%-- Bootstrap-dialog --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css" rel="stylesheet">
<%-- Animate --%>
<link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">


<%-- Jquery v3.3.1 --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- Bootstrap v3.3.7 --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- Bootstrap-dialog --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<%-- Parallax --%>
<script src="${pageContext.request.contextPath}/resources/js/parallax.js"></script>
</head>
<body>
	

	<!-- jQuery CDN -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
	<!-- Bootstrap Js CDN -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
 	<div class="wrapper">
		
		<%-- 사이드바 --%>
		<tiles:insertAttribute name="admin_left" />
		
		<div id="content">
			<%-- 헤더 --%>
			<tiles:insertAttribute name="admin_header" />
			<%-- 본문 --%>
       		<tiles:insertAttribute name="admin_main" />
    	</div>
	</div>

	
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

                  <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                     $(this).toggleClass('active');
                 });
                 
                 
                 
             });
         </script>

	
    
</body>
</html>