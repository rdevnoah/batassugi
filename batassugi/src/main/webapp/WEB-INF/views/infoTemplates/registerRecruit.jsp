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
<script src="https://use.fontawesome.com/a5d5d71388.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>

<title>"PM KimYoungHo"</title>
</head>
<body>
  <div class="container">
   <div class="row">
      <div class="col-xs-12">
         <form class="form-inline">
            <div class="panel panel-info animated fadeIn">
            
               <div class="panel-heading">
                  <div class="panel-title text-center">농지 모집 등록</div>
               </div>
               
               <div class="panel-body">
                  <%-- 평수 --%>
                  <div class="form-group col-xs-offset-1 col-xs-3">
                     <label>평수 : </label>
                     <input type="number" class="form-control" min="10" max="${recruitMap.rentSize}" required style="width: 30%;"><label class="text-danger">/ ${recruitMap.rentSize}</label>
                  </div> <%-- form-group col-xs-offset-1 col-xs-3 --%>
                  
                  <%-- 재배가능작물 --%>
                  <div class="form-group col-xs-4">
                     <label>작물 : </label>
                        <c:forEach items="${recruitMap.farmVo.farmVo.cropsVo}" var="crops">
                           ${crops.cropsName}  
                        </c:forEach>
                     
                  </div> <%-- form-group col-xs-4 --%>
                  
                  <%-- 대여기간 --%>
                  <div class="form-group col-xs-4">
                     <label>대여기간 : </label>
                     <input class="form-control" type="text" value="${recruitMap.maxMonth}" readonly style="width: 30%;">
                  </div> <%-- form-group col-xs-4 --%>
                  
                  <%-- 농지주소 --%>
                  <div class="form-group col-xs-offset-1 col-xs-3">
                     <label>주소 : </label>
                     <input class="form-control" type="text" value="${recruitMap.farmVo.farmVo.farmAddress}" readonly style="width: 30%;">
                  </div> <%-- form-group col-xs-offset-1 col-xs-3 --%>
                  
                  <%-- 농지임대자의 전화번호 --%>
                  <div class="form-group col-xs-4">
                     <label>전화번호 : </label>
                     <input class="form-control" type="text" value="${recruitVo.farmVo.memberInfoVo.tel}" readonly style="width: 33%;">
                  </div> <%-- form-group col-xs-4 --%>
                  
                  <%-- 평당 월 가격 --%>
                  <div class="form-group col-xs-4">
                     <label>평당 월 가격 : </label>
                     <input class="form-control" type="number" min="0" name="price" style="width: 45%;" placeholder="가격을 입력하세요">
                  </div> <%-- form-group col-xs-4 --%>
                  
                  <%-- 상세내용 --%>
                  <div class="form-group col-xs-offset-1 col-xs-10">
                     <br>
                     <h5>상세내용</h5>
                     <textarea style="width : 100%; border: solid 1px; height: 100px; overflow-y: scroll;"></textarea>
                     <!-- <div style="white-space: pre-line; color: #dddddd; border: solid 1px; height: 100px; overflow-y: scroll;"> -->
                     </div>
                  </div> <%-- form-group col-xs-offset-1 col-xs-10 --%>
                  
               </div> <%-- panel-body --%>
               
               <div class="panel-footer">
                  <div class="text-center">
                     <button type="submit" class="btn btn-info">모집등록하기</button>
                  </div> <%-- text-center --%>
               </div> <%-- panel-footer --%>
               
            </div> <%-- panel panel-info animated fadeIn --%>
         </form> <%-- form-inline --%>
      </div> <%-- col-xs-12 --%>
   </div> <%-- row --%>
</div>
</html>