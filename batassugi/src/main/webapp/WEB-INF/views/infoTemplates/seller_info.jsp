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
      <div class="row main">
         <div class="col-xs-4">
            <c:import url="left_info.jsp"/>
         </div> <%-- col-xs-4 left --%>
         <div class="col-xs-8">
         	<c:forEach items="${requestScope.farmList}" var="farm">
				<span>${farm.farmNo}</span><br>
				<span>${farm.farmAddress}</span><br>
				<c:forEach items="${farm.cropsVo}" var="crops">
					<span>${crops.cropsNo}</span><br>
					<span>${crops.cropsName}</span><br>
				</c:forEach>		
				<input class="detailFarm" type="submit" value="상세정보">
			</c:forEach>
         </div>
      </div> <%-- row main --%>
   </div> <%-- container --%>
   <script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
</body>
<script>
	$(document).ready(function() {
		var $detailFarm = $('.detailFarm');
		$detailFarm.on('click', function() {
			
			var $farmNo=$(this).parents().children("span:nth(0)").text();
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
			appendString+="<div class='col-xs-7'>평수 : "+ $data.farmVo.farmSize+"<br>";
			appendString+="밭 주소 : "+$data.farmVo.farmAddress+"<br>";
			appendString+="등록만료일 : "+$data.farmVo.farmEnddate+"<br>";
			appendString+="농지주인 : "+$data.farmVo.id+"<br>";
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