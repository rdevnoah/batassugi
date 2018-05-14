<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
<title>
<tiles:insertAttribute name="title" ignore="true" />
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> <!-- ajax version3 : 이외의 버전은 사용금지 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> <!-- bootstrap version3 : 이외의 버전은 사용금지-->

<!-- Style 추가영역 -->
<link rel="stylesheet"  type="text/css" href="#" > 
</head>


<body>
  <!-- header -->
  <div id="header"> 
  	<tiles:insertAttribute name="header" /> 
  </div>

  <!-- main -->
  <div id="main" class="col-sm-7 text-left">
    <tiles:insertAttribute name="main" />
  </div>
	
  <!-- footer -->
  <div id="footer">
    <tiles:insertAttribute name="footer" />
  </div>
</body>


</html>