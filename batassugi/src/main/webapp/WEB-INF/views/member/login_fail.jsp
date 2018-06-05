<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- Bootstrap v3.3.7 --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-ukyi.css" rel="stylesheet">
<%-- bootstrap-dialog --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css" rel="stylesheet">
<%-- animate --%>
<link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">
<%-- favicon --%>
<link href="${pageContext.request.contextPath}/resources/img/favicon.ico" rel="shortcut icon" type="image/x-icon">

<%-- Jquery v3.3.1 --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- Bootstrap v3.3.7 --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- bootstrap-dialog --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<%-- parallax --%>
<script src="${pageContext.request.contextPath}/resources/js/parallax.js"></script>
<%-- font-awesome v4.7.0 --%>
<script src="${pageContext.request.contextPath}/resources/https://use.fontawesome.com/a5d5d71388.js"></script>

<title>login fail</title>
</head>
<body>
</body>
<script type="text/javascript">
BootstrapDialog.alert({
	type : "danger",
	title : "로그인 실패",
	message : "${message}",
	onhidden : function() {
		location.href="${pageContext.request.contextPath}/home/loginView";
	}
})
</script>
</html>