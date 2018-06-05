<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- bootstrap --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
<%-- bootstrap-theme --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" rel="stylesheet">
<%-- bootstrap-dialog --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css" rel="stylesheet">
<%-- favicon --%>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon/favicon-brown.ico" type="image/x-icon">

<%-- jquery --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- fontawesom --%>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<%-- bootstrap --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- bootstrap-dialog --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<title>"GL_SangKyoung"</title>
</head>
<body>
   <div class="container-fluid">
      <div class="row main">
         <div class="col-sm-offset-2 col-sm-8">
			<form action="${pageContext.request.contextPath}/seller/farm_register" method="post" >
				밭평수<input type="text" name="farmSize"><br>
				밭등록날짜<input type="date" name="farmStartdate"><br>
				밭마감날짜<input type="date" name="farmEnddate"><br>
				 밭 주소 <input type="text" name="farmAddress"><br>
				작물선택 <input type="checkbox" name="cropsNo" value="1">상추
				<input type="checkbox" name="cropsNo" value="2">땅콩
				<input type="checkbox" name="cropsNo" value="3">깻잎
				<input type="checkbox" name="cropsNo" value="4">부추
				<input type="submit" value="등록">
			</form>
         </div> <%-- col-sm-offset-2 col-sm-8 --%>
      </div> <%-- row main --%>
   </div> <%-- container-fluid --%>
</body>
</html>