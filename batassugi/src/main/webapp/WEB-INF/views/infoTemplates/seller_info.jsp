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

<title>"PM KimYoungHo"</title>
</head>
<body>
<div class="container">
   <div class="row">
      <div class="col-xs-12">
         <c:forEach items="${farmList}" var="farmVo">
         <div class="col-xs-3">
            <div class="thumbnail rent">
               <img src="${pageContext.request.contextPath}/resources/img/대여신청_밭사진1.png" class="img-responsive">
               <div class="caption">
                  <div class="hidden"><span>${farmVo.farmNo}</span></div>
                  <div><i class="fa fa-calendar-check-o fa-lg"></i> <span>${farmVo.farmEnddate}</span> 까지</div>
                  <div><i class="fa fa-fort-awesome fa-lg"></i> <span>${farmVo.farmSize}평</span></div>
                  <!-- <div><i class="fa fa-comment-o fa-lg"></i> <span>서현에 위치한 농장을 대여 해드립니다</span></div> -->
                  <div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>${farmVo.farmAddress}</span></div>
                  <p>
                     <c:forEach items="${farmVo.cropsVo}" var="crops">
                     	${crops.cropsName}
                     </c:forEach>
                  </p>
                  <button class="btn btn-primary btn-block detailFarm">상세보기</button>
               </div> <%-- caption --%>
            </div> <%-- thumbnail --%>
         </div> <%-- col-xs-4 --%>
         </c:forEach>
      </div> <%-- col-xs-12 --%>
   </div> <%-- row --%>
</div> <%-- container --%>
   <script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
</body>
<script>
	$(document).ready(function() {
		var $detailFarm = $('.detailFarm');
		$detailFarm.on('click', function() {
			//alert($('.hidden').children("span:nth(0)").text());
			var $farmNo=$('.hidden').children("span:nth(0)").text();
			var $data;
			 $.ajax({
				type : 'post',
				url:'getDetailFarm',
				data : 'farmNo='+$farmNo,
				async : false,
				success : function(data) {
					$data=data;		
				}	
			})
			var $detailModal = new BootstrapDialog({
				type : 'default',
				title : '내 농지 정보',
				body : 'asdfasdfasdfasdf',
				buttons : [{
	                label: '대여모집',
	                action : function() {
	                	sendPost('registerRecruitForm', {
	                		'farmNo' : $data.farmVo.farmNo
	                	})
						//location.href="registerRecruitForm";
					}
	            },{
	            	label:'주말농장모집',
	            	action : function(){
	            		
	            	}
	            },
	            {
	            	label: '닫기',
	            	action: function(dialogRef) {
						dialogRef.close();
					}            	
	            }],
				closable : true,
			})
			$detailModal.realize();
			$detailModal.getModalHeader().parents().find(".modal-header").append("<hr>");
			var $myModalBody=$detailModal.getModalBody().parents().find(".bootstrap-dialog-body");
			var appendString='';
			var crops='';
			for (var i=0 ; i < $data.farmVo.cropsVo.length ; i++){
				crops+=$data.farmVo.cropsVo[i].cropsName+' ';
			}
			appendString+="<div class='col-xs-5'>asdf";
			appendString+="</div>";
			appendString+="<div class='col-xs-7'>평수 : "+ $data.farmVo.farmSize+"<hr>";
			appendString+="밭 주소 : "+$data.farmVo.farmAddress+"<hr>";
			appendString+="등록만료일 : "+$data.farmVo.farmEnddate+"<hr>";
			appendString+="농지주인 : "+$data.farmVo.id+"<hr>";
			appendString+="재배가능농작물 : "+crops+"<br><br><br><br>";
			appendString+="</div><hr>";
			
			$myModalBody.append(appendString);
			//alert($myModalBody.html());
			$detailModal.open();
			//alert(($data).farmVo.farmAddress);
			// 
		})
	})
</script>
</html>